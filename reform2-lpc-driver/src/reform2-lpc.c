#include <linux/module.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/spi/spi.h>
#include <linux/delay.h>
#include <linux/power_supply.h>

static int spiProbe(struct spi_device *spi);
static void spiRemove(struct spi_device *spi);
static ssize_t showStatus(struct device *dev, struct device_attribute *attr, char *buf);
static ssize_t showCells(struct device *dev, struct device_attribute *attr, char *buf);
static ssize_t showFirmware(struct device *dev, struct device_attribute *attr, char *buf);
static ssize_t showCapacity(struct device *dev, struct device_attribute *attr, char *buf);

static ssize_t lpcCommand(struct device *dev, char command, uint8_t arg1, uint8_t *response);
static int bat_get_property(struct power_supply *psy, enum power_supply_property psp, union power_supply_propval *val);

typedef struct t_private_data
{
    struct spi_device *spi;
    struct power_supply *bat;
    struct mutex lock;
} T_PRIVATE_DATA;

static DEVICE_ATTR(status, 0444, showStatus, NULL);
static DEVICE_ATTR(cells, 0444, showCells, NULL);
static DEVICE_ATTR(firmware, 0444, showFirmware, NULL);
static DEVICE_ATTR(capacity, 0444, showCapacity, NULL);

static struct spi_board_info g_spi_board_info = {
    .modalias = "reform2-lpc",
    .max_speed_hz = 400000,
    .bus_num = 0,
    .chip_select = 0,
    .mode = SPI_MODE_1,
};

static enum power_supply_property bat_props[] = {
    POWER_SUPPLY_PROP_STATUS,
    POWER_SUPPLY_PROP_TECHNOLOGY, // lifepo4
    POWER_SUPPLY_PROP_VOLTAGE_NOW, // uV
    POWER_SUPPLY_PROP_CURRENT_NOW, // uA
    POWER_SUPPLY_PROP_CAPACITY, // percent
    POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN, //uAh hardcoded to 1800 atm, param 2
    POWER_SUPPLY_PROP_CHARGE_NOW, //uAh capacity_accu_ampsecs param 0
    POWER_SUPPLY_PROP_CHARGE_EMPTY, // uAh param 1
};

static struct power_supply_desc bat_desc = {
    .name = "8xlifepo4",
    .properties = bat_props,
    .num_properties = ARRAY_SIZE(bat_props),
    .get_property = bat_get_property,
    .type = POWER_SUPPLY_TYPE_BATTERY,
};

static int spiProbe(struct spi_device *spi)
{
    T_PRIVATE_DATA *data;
    int ret;
    struct power_supply_config psy_cfg = {};

    printk(KERN_INFO "%s: probing ...\n", "reform2-lpc");

    spi->max_speed_hz = g_spi_board_info.max_speed_hz;
    spi->mode = g_spi_board_info.mode;
    spi->bits_per_word = 8;

    ret = spi_setup(spi);
    if (ret)
    {
        printk(KERN_ERR "%s: spi_setup failed\n", __func__);
        return -ENODEV;
    }

    data = kzalloc(sizeof(T_PRIVATE_DATA), GFP_KERNEL);
    if (data == NULL)
    {
        printk(KERN_ERR "%s: kzalloc failed\n", __func__);
        return -ENOMEM;
    }

    data->spi = spi;
    mutex_init(&data->lock);
    spi_set_drvdata(spi, data);

    ret = device_create_file(&spi->dev, &dev_attr_status);
    if (ret)
    {
        printk(KERN_ERR "%s: device_create_file failed\n", __func__);
    }

    ret = device_create_file(&spi->dev, &dev_attr_cells);
    if (ret)
    {
        printk(KERN_ERR "%s: device_create_file failed\n", __func__);
    }

    ret = device_create_file(&spi->dev, &dev_attr_firmware);
    if (ret)
    {
        printk(KERN_ERR "%s: device_create_file failed\n", __func__);
    }

    ret = device_create_file(&spi->dev, &dev_attr_capacity);
    if (ret)
    {
        printk(KERN_ERR "%s: device_create_file failed\n", __func__);
    }

    psy_cfg.of_node = spi->dev.of_node,
    psy_cfg.drv_data = data,

    data->bat = power_supply_register_no_ws(&spi->dev, &bat_desc, &psy_cfg);
    if (IS_ERR(data->bat))
    {
        printk(KERN_ERR "%s: power_supply_register_no_ws failed\n", __func__);
        return PTR_ERR(data->bat);
    }

    return 0;
}

static void spiRemove(struct spi_device *spi)
{
    T_PRIVATE_DATA *data = (T_PRIVATE_DATA *)spi_get_drvdata(spi);

    printk(KERN_INFO "%s: removing ... \n", "reform2-lpc");

    device_remove_file(&spi->dev, &dev_attr_status);
    device_remove_file(&spi->dev, &dev_attr_firmware);
    device_remove_file(&spi->dev, &dev_attr_cells);
    device_remove_file(&spi->dev, &dev_attr_capacity);

    power_supply_unregister(data->bat);

    kfree(data);
}

static ssize_t showStatus(struct device *dev, struct device_attribute *attr, char *buf)
{
    uint8_t statusResult[8];
    int ret = 0;
    int16_t voltage;
    int16_t amps;
    uint8_t percentage;
    uint8_t status;

    ret = lpcCommand(dev, 'q', 0, statusResult);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    voltage = (int16_t)statusResult[0] | ((int16_t)statusResult[1] << 8);
    amps = (int16_t)statusResult[2] | ((int16_t)statusResult[3] << 8);
    percentage = statusResult[4];
    status = statusResult[5];

    return snprintf(buf, PAGE_SIZE, "%d.%d %d.%d %2d%% %d",
                    voltage / 1000, voltage % 1000, amps / 1000, abs(amps % 1000), percentage, status);
}

static ssize_t showCells(struct device *dev, struct device_attribute *attr, char *buf)
{
    uint8_t statusResult[8];
    uint16_t cells[8];
    int ret = 0;
    ssize_t wroteChars = 0;
    
    ret = lpcCommand(dev, 'v', 0, statusResult);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    for(uint8_t s = 0; s < 4; s++)
    {
        cells[s] = statusResult[s*2] | statusResult[(s*2)+1] << 8;
    }
    
    ret = lpcCommand(dev, 'v', 1, statusResult);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    for(uint8_t s = 0; s < 4; s++)
    {
        cells[s+4] = statusResult[s*2] | statusResult[(s*2)+1] << 8;
    }

    for(uint8_t s = 0; s < 8; s++)
    {
        ret = snprintf(buf + wroteChars, PAGE_SIZE - wroteChars, "%d.%d ", cells[s]/1000, cells[s]%1000);
        if(ret != -1)
        {
            wroteChars += ret;
        }
    }

    // drop the trailing whitespace
    if(wroteChars > 0)
    {
        wroteChars--;
    }
    
    return wroteChars;
}

static ssize_t showFirmware(struct device *dev, struct device_attribute *attr, char *buf)
{
    uint8_t str1[9];
    uint8_t str2[9];
    uint8_t str3[9];
    int ret = 0;
    

    ret = lpcCommand(dev, 'f', 0, str1);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    ret = lpcCommand(dev, 'f', 1, str2);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    ret = lpcCommand(dev, 'f', 2, str3);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    str1[8] = '\0';
    str2[8] = '\0';
    str3[8] = '\0';

    return snprintf(buf, PAGE_SIZE, "%s %s %s", str1, str2, str3);
}

static ssize_t showCapacity(struct device *dev, struct device_attribute *attr, char *buf)
{
    uint8_t buffer[8];
    int ret = 0;
    uint16_t cap_accu, cap_min, cap_max;
    ret = lpcCommand(dev, 'c', 0, buffer);
    if (ret)
    {
        printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
    }

    // units in mAh
    cap_accu = buffer[0] | (buffer[1] << 8);
    cap_min =  buffer[2] | (buffer[3] << 8);
    cap_max = buffer[4] | (buffer[5] << 8);

    return snprintf(buf, PAGE_SIZE, "%d %d %d", cap_accu, cap_min, cap_max);
}

static ssize_t lpcCommand(struct device *dev, char command, uint8_t arg1, uint8_t *responseBuffer)
{
    T_PRIVATE_DATA *data = (T_PRIVATE_DATA *)dev_get_drvdata(dev);
    uint8_t commandBuffer[4] = {0xB5, command, arg1, 0x0};
    int ret = 0;

    mutex_lock(&data->lock);
    
    ret = spi_write(data->spi, commandBuffer, 4);
    if (ret)
    {
        printk(KERN_INFO "%s: spi_write failed\n", __func__);
    }
    mdelay(70);

    ret = spi_read(data->spi, responseBuffer, 8);
    if (ret)
    {
        printk(KERN_INFO "%s: spi_read failed\n", __func__);
    }
    mdelay(70);
    mutex_unlock(&data->lock);

    return ret;
}

static int bat_get_property(struct power_supply *psy,
                 enum power_supply_property psp,
                 union power_supply_propval *val)
{
    int ret = 0;
    uint8_t buffer[8];
    T_PRIVATE_DATA *data;
    struct device *dev;
    int16_t temp = 0;

    data = (T_PRIVATE_DATA *)power_supply_get_drvdata(psy);
    dev = &(data->spi->dev);

    switch (psp) {
        case POWER_SUPPLY_PROP_STATUS:
            val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
            ret = lpcCommand(dev, 'q', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            temp = (int16_t)buffer[2] | ((int16_t)buffer[3] << 8);
            if(temp < 0)
            {
                val->intval = POWER_SUPPLY_STATUS_CHARGING;
            }
            else if(temp == 0)
            {
                if(buffer[4] == 100)
                {
                    val->intval = POWER_SUPPLY_STATUS_FULL;
                }
                else
                {
                    val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
                }
            }
            else
            {
                val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
            }
            break;
        case POWER_SUPPLY_PROP_TECHNOLOGY:
            val->intval = POWER_SUPPLY_TECHNOLOGY_LiFe;
            break;
        case POWER_SUPPLY_PROP_VOLTAGE_NOW:
            ret = lpcCommand(dev, 'q', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = (buffer[0] | buffer[1] << 8) * 1000;
            break;
        case POWER_SUPPLY_PROP_CURRENT_NOW:
            ret = lpcCommand(dev, 'q', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = (buffer[2] | buffer[3] << 8) * 1000;
            break;
        case POWER_SUPPLY_PROP_CAPACITY:
            ret = lpcCommand(dev, 'q', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = buffer[4];
            break;
        case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
            ret = lpcCommand(dev, 'c', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = (buffer[4] | buffer[5] << 8) * 1000;
            break;
        case POWER_SUPPLY_PROP_CHARGE_NOW:
            ret = lpcCommand(dev, 'c', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = (buffer[0] | buffer[1] << 8) * 1000;
            break;
        case POWER_SUPPLY_PROP_CHARGE_EMPTY:
            ret = lpcCommand(dev, 'c', 0, buffer);
            if (ret)
            {
                printk(KERN_INFO "%s: lpcCommand failed\n", __func__);
            }
            val->intval = (buffer[2] | buffer[3] << 8) * 1000;
            break;
        default:
            val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
            ret = -EINVAL;
            break;
    }
    return ret;
}

// enum state_t {
//               ST_CHARGE,  -- charging
//               ST_OVERVOLTED, -- charging? full? balancing
//               ST_COOLDOWN, -- charging? full? balancing
//               ST_UNDERVOLTED, -- cells under voltage, discharging?
//               ST_MISSING, -- cells missing
//               ST_FULLY_CHARGED, -- full charged
//               ST_POWERSAVE -- deep sleep of lpc
// };

static const struct of_device_id of_tis_spi_match[] = {
    {.compatible = "mntre,lpc11u24", .data = 0},
    {.compatible = "mntre,lpc-reform2", .data = 0},
    {}};
MODULE_DEVICE_TABLE(of, of_tis_spi_match);

static struct spi_device_id g_spi_dev_id_list[] = {
        /* device name, device id */
        { "lpc11u24", 0 },
        { "lpc-reform2", 0 },
        { },
};
MODULE_DEVICE_TABLE(spi, g_spi_dev_id_list);

static struct spi_driver g_spi_driver = {
    .probe = spiProbe,
    .remove = spiRemove,
    .driver = {
        .of_match_table = of_match_ptr(of_tis_spi_match),
        .owner = THIS_MODULE,
        .name = "reform2-lpc",
    },
    .id_table = g_spi_dev_id_list,
};
module_spi_driver(g_spi_driver);

MODULE_DESCRIPTION("Reform 2 LPC Driver");
MODULE_LICENSE("GPL");
