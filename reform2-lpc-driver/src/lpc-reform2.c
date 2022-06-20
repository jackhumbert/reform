#include <linux/module.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/spi/spi.h>
#include <linux/delay.h>

static int spiProbe(struct spi_device *spi);
static void spiRemove(struct spi_device *spi);
static ssize_t showStatus(struct device *dev, struct device_attribute *attr, char *buf);

typedef struct t_private_data
{
    struct spi_device *spi;
    struct mutex lock;
} T_PRIVATE_DATA;

static DEVICE_ATTR(status, 0444, showStatus, NULL);

static struct spi_board_info g_spi_board_info = {
    .modalias = "lpc-reform2",
    .max_speed_hz = 400000,
    .bus_num = 0,
    .chip_select = 0,
    .mode = SPI_MODE_1,
};

static int spiProbe(struct spi_device *spi)
{
    T_PRIVATE_DATA *data;
    int ret;

    printk(KERN_INFO "%s: probing ...\n", "lpc-reform2");

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

    return 0;
}

static void spiRemove(struct spi_device *spi)
{
    T_PRIVATE_DATA *data = (T_PRIVATE_DATA *)spi_get_drvdata(spi);

    printk(KERN_INFO "%s: removing ... \n", "lpc-reform2");

    device_remove_file(&spi->dev, &dev_attr_status);

    kfree(data);
}

static ssize_t showStatus(struct device *dev, struct device_attribute *attr, char *buf)
{
    T_PRIVATE_DATA *data = (T_PRIVATE_DATA *)dev_get_drvdata(dev);
    uint8_t statusCommand[3] = {0xB5, 'q', 0x00};
    uint8_t statusResult[8];
    int ret;
    int16_t voltage;
    int16_t amps;
    int8_t percentage;
    uint8_t status;

    mutex_lock(&data->lock);

    ret = spi_write(data->spi, statusCommand, 3);
    if (ret)
    {
        printk(KERN_INFO "%s: spi_write failed\n", __func__);
    }
    mdelay(300);

    ret = spi_read(data->spi, statusResult, 8);
    if (ret)
    {
        printk(KERN_INFO "%s: spi_read failed\n", __func__);
    }

    mutex_unlock(&data->lock);

    voltage = (int16_t)statusResult[0] | ((int16_t)statusResult[1] << 8);
    amps = (int16_t)statusResult[2] | ((int16_t)statusResult[3] << 8);
    percentage = statusResult[4];
    status = statusResult[5];

    return snprintf(buf, PAGE_SIZE, "%d.%d, %d.%d, %2d%%, %d",
                    voltage / 1000, voltage % 1000, amps / 1000, abs(amps % 1000), percentage, status);
}

static const struct of_device_id of_tis_spi_match[] = {
    {.compatible = "mntre,lpc-reform2", .data = 0},
    {}};
MODULE_DEVICE_TABLE(of, of_tis_spi_match);

static struct spi_device_id g_spi_dev_id_list[] = {
    {"lpc-reform2", 0},
    {},
};
MODULE_DEVICE_TABLE(spi, g_spi_dev_id_list);

static struct spi_driver g_spi_driver = {
    .probe = spiProbe,
    .remove = spiRemove,
    .driver = {
        .of_match_table = of_match_ptr(of_tis_spi_match),
        .owner = THIS_MODULE,
        .name = "lpc-reform2",
    },
    .id_table = g_spi_dev_id_list,
};
module_spi_driver(g_spi_driver);

MODULE_DESCRIPTION("Reform 2 LPC Driver");
MODULE_LICENSE("GPL");
