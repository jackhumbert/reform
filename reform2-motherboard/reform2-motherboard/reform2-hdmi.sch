EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "MNT Reform 2 External Display"
Date "2020-02-07"
Rev "2.0D-3"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: GPL v3+"
Comment4 ""
$EndDescr
$Comp
L Connector:HDMI_A J?
U 1 1 5D123420
P 8050 2600
AR Path="/5D123420" Ref="J?"  Part="1" 
AR Path="/5D0D8363/5D123420" Ref="J4"  Part="1" 
F 0 "J4" H 8480 2646 50  0000 L CNN
F 1 "HDMI_A" H 8480 2555 50  0000 L CNN
F 2 "footprints:HDMI-685119134923" H 8075 2600 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/HDMI" H 8075 2600 50  0001 C CNN
F 4 "Wurth" H 8050 2600 50  0001 C CNN "Manufacturer"
F 5 "685119134923" H 8050 2600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8050 2600 50  0001 C CNN "Checked"
F 7 "Mouser" H 8050 2600 50  0001 C CNN "Distributor"
	1    8050 2600
	1    0    0    -1  
$EndComp
Text GLabel 2650 1900 0    50   Input ~ 0
HDMI_D2-
Text GLabel 2650 1800 0    50   Input ~ 0
HDMI_D2+
Text GLabel 2650 2100 0    50   Input ~ 0
HDMI_D1-
Text GLabel 2650 2000 0    50   Input ~ 0
HDMI_D1+
Text GLabel 2650 2500 0    50   Input ~ 0
HDMI_CLK-
Text GLabel 2650 2400 0    50   Input ~ 0
HDMI_CLK+
Text GLabel 2650 2300 0    50   Input ~ 0
HDMI_D0-
Text GLabel 2650 2200 0    50   Input ~ 0
HDMI_D0+
$Comp
L reform2:CM2020-00TR U22
U 1 1 5D124B0E
P 4800 5100
F 0 "U22" H 4800 6467 50  0000 C CNN
F 1 "TPD12S521" H 4800 6376 50  0000 C CNN
F 2 "footprints:TSSOP50P640X120-38N" H 4350 2950 50  0001 L BNN
F 3 "" H 4800 5100 50  0001 L BNN
F 4 "Texas Instruments" H 4800 5100 50  0001 C CNN "Manufacturer"
F 5 "TPD12S521" H 4800 5100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4800 5100 50  0001 C CNN "Checked"
F 7 "Mouser" H 4800 5100 50  0001 C CNN "Distributor"
	1    4800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1800 2900 1800
Wire Wire Line
	2650 2000 3100 2000
Wire Wire Line
	7650 2100 3200 2100
Wire Wire Line
	2650 2200 3300 2200
Wire Wire Line
	7650 2300 3400 2300
Wire Wire Line
	2650 2400 3500 2400
Wire Wire Line
	7650 2500 3600 2500
Wire Wire Line
	3700 4500 3500 4500
Wire Wire Line
	3500 4500 3500 2400
Connection ~ 3500 2400
Wire Wire Line
	3500 2400 7650 2400
Wire Wire Line
	3700 4600 3600 4600
Wire Wire Line
	3600 4600 3600 2500
Connection ~ 3600 2500
Wire Wire Line
	3600 2500 2650 2500
Wire Wire Line
	3700 4900 3400 4900
Wire Wire Line
	3400 4900 3400 2300
Connection ~ 3400 2300
Wire Wire Line
	3400 2300 2650 2300
Wire Wire Line
	3700 4800 3300 4800
Wire Wire Line
	3300 4800 3300 2200
Connection ~ 3300 2200
Wire Wire Line
	3300 2200 7650 2200
Wire Wire Line
	3700 5200 3200 5200
Wire Wire Line
	3200 5200 3200 2100
Connection ~ 3200 2100
Wire Wire Line
	3200 2100 2650 2100
Wire Wire Line
	3700 5100 3100 5100
Wire Wire Line
	3100 5100 3100 2000
Connection ~ 3100 2000
Wire Wire Line
	3100 2000 7650 2000
Wire Wire Line
	7650 1900 3000 1900
Wire Wire Line
	3700 5500 3000 5500
Wire Wire Line
	3000 5500 3000 1900
Connection ~ 3000 1900
Wire Wire Line
	3000 1900 2650 1900
Wire Wire Line
	3700 5400 2900 5400
Wire Wire Line
	2900 5400 2900 1800
Connection ~ 2900 1800
Wire Wire Line
	2900 1800 7650 1800
$Comp
L power:GND #PWR0156
U 1 1 5D12D351
P 4800 6850
F 0 "#PWR0156" H 4800 6600 50  0001 C CNN
F 1 "GND" H 4805 6677 50  0000 C CNN
F 2 "" H 4800 6850 50  0001 C CNN
F 3 "" H 4800 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6500 4250 6650
Wire Wire Line
	4250 6650 4350 6650
Wire Wire Line
	4800 6650 4800 6850
Wire Wire Line
	4800 6650 4950 6650
Wire Wire Line
	5350 6650 5350 6500
Connection ~ 4800 6650
Wire Wire Line
	5250 6500 5250 6650
Connection ~ 5250 6650
Wire Wire Line
	5250 6650 5350 6650
Wire Wire Line
	5150 6500 5150 6650
Connection ~ 5150 6650
Wire Wire Line
	5150 6650 5250 6650
Wire Wire Line
	5050 6500 5050 6650
Connection ~ 5050 6650
Wire Wire Line
	5050 6650 5150 6650
Wire Wire Line
	4950 6500 4950 6650
Connection ~ 4950 6650
Wire Wire Line
	4950 6650 5050 6650
Wire Wire Line
	4650 6500 4650 6650
Connection ~ 4650 6650
Wire Wire Line
	4650 6650 4800 6650
Wire Wire Line
	4550 6500 4550 6650
Connection ~ 4550 6650
Wire Wire Line
	4550 6650 4650 6650
Wire Wire Line
	4450 6500 4450 6650
Connection ~ 4450 6650
Wire Wire Line
	4450 6650 4550 6650
Wire Wire Line
	4350 6500 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4350 6650 4450 6650
Wire Wire Line
	5900 5100 7000 5100
Wire Wire Line
	7350 5100 7350 3000
Wire Wire Line
	7350 3000 7650 3000
Wire Wire Line
	5900 4800 6700 4800
Wire Wire Line
	7250 4800 7250 2900
Wire Wire Line
	7250 2900 7650 2900
$Comp
L power:GND #PWR0157
U 1 1 5D137F78
P 8250 3950
F 0 "#PWR0157" H 8250 3700 50  0001 C CNN
F 1 "GND" H 8255 3777 50  0000 C CNN
F 2 "" H 8250 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3700 7850 3800
Wire Wire Line
	7850 3800 7950 3800
Wire Wire Line
	8350 3800 8350 3700
Wire Wire Line
	8250 3700 8250 3800
Connection ~ 8250 3800
Wire Wire Line
	8250 3800 8350 3800
Wire Wire Line
	8150 3700 8150 3800
Connection ~ 8150 3800
Wire Wire Line
	8150 3800 8250 3800
Wire Wire Line
	8050 3700 8050 3800
Connection ~ 8050 3800
Wire Wire Line
	8050 3800 8150 3800
Wire Wire Line
	7950 3700 7950 3800
Connection ~ 7950 3800
Wire Wire Line
	7950 3800 8050 3800
Wire Wire Line
	8250 3800 8250 3950
$Comp
L Device:R_Small R45
U 1 1 5D13F480
P 7550 5550
F 0 "R45" H 7609 5596 50  0000 L CNN
F 1 "10k" H 7609 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 5550 50  0001 C CNN
F 3 "~" H 7550 5550 50  0001 C CNN
F 4 "Yageo" H 7550 5550 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 7550 5550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7550 5550 50  0001 C CNN "Checked"
F 7 "Mouser" H 7550 5550 50  0001 C CNN "Distributor"
	1    7550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5400 7550 5400
Wire Wire Line
	7550 5400 7550 3300
Wire Wire Line
	7550 3300 7650 3300
Wire Wire Line
	7550 5450 7550 5400
Connection ~ 7550 5400
$Comp
L power:GND #PWR0158
U 1 1 5D14251A
P 7550 5750
F 0 "#PWR0158" H 7550 5500 50  0001 C CNN
F 1 "GND" H 7555 5577 50  0000 C CNN
F 2 "" H 7550 5750 50  0001 C CNN
F 3 "" H 7550 5750 50  0001 C CNN
	1    7550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7550 5750
Text GLabel 5900 5300 2    50   Output ~ 0
HDMI_HPD
Text GLabel 5900 5000 2    50   BiDi ~ 0
HDMI_SDA
Text GLabel 5900 4700 2    50   Input ~ 0
HDMI_SCL
Wire Wire Line
	5900 4400 7050 4400
Wire Wire Line
	7050 4400 7050 1250
Wire Wire Line
	7050 1250 7400 1250
Wire Wire Line
	8050 1250 8050 1500
$Comp
L Device:C_Small C30
U 1 1 5D14719E
P 7400 1400
F 0 "C30" H 7492 1446 50  0000 L CNN
F 1 "0.1uF" H 7492 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7400 1400 50  0001 C CNN
F 3 "~" H 7400 1400 50  0001 C CNN
F 4 "Yageo" H 7400 1400 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 7400 1400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7400 1400 50  0001 C CNN "Checked"
F 7 "Mouser" H 7400 1400 50  0001 C CNN "Distributor"
	1    7400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1300 7400 1250
Connection ~ 7400 1250
Wire Wire Line
	7400 1250 8050 1250
$Comp
L power:GND #PWR0159
U 1 1 5D148EE2
P 7400 1500
F 0 "#PWR0159" H 7400 1250 50  0001 C CNN
F 1 "GND" H 7405 1327 50  0000 C CNN
F 2 "" H 7400 1500 50  0001 C CNN
F 3 "" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R43
U 1 1 5D14CD66
P 6700 4650
F 0 "R43" H 6759 4696 50  0000 L CNN
F 1 "4.7k" H 6759 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 4650 50  0001 C CNN
F 3 "~" H 6700 4650 50  0001 C CNN
F 4 "Yageo" H 6700 4650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 6700 4650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6700 4650 50  0001 C CNN "Checked"
F 7 "Mouser" H 6700 4650 50  0001 C CNN "Distributor"
	1    6700 4650
	1    0    0    -1  
$EndComp
Connection ~ 6700 4800
Wire Wire Line
	6700 4800 7250 4800
$Comp
L Device:R_Small R44
U 1 1 5D14D233
P 7000 4650
F 0 "R44" H 7059 4696 50  0000 L CNN
F 1 "4.7k" H 7059 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 4650 50  0001 C CNN
F 3 "~" H 7000 4650 50  0001 C CNN
F 4 "Yageo" H 7000 4650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 7000 4650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7000 4650 50  0001 C CNN "Checked"
F 7 "Mouser" H 7000 4650 50  0001 C CNN "Distributor"
	1    7000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4750 6700 4800
Wire Wire Line
	7000 4750 7000 5100
Connection ~ 7000 5100
Wire Wire Line
	7000 5100 7350 5100
$Comp
L power:+5V #PWR0160
U 1 1 5D1511E0
P 6700 4550
F 0 "#PWR0160" H 6700 4400 50  0001 C CNN
F 1 "+5V" H 6550 4600 50  0000 C CNN
F 2 "" H 6700 4550 50  0001 C CNN
F 3 "" H 6700 4550 50  0001 C CNN
	1    6700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0161
U 1 1 5D1514E7
P 7000 4550
F 0 "#PWR0161" H 7000 4400 50  0001 C CNN
F 1 "+5V" H 6850 4600 50  0000 C CNN
F 2 "" H 7000 4550 50  0001 C CNN
F 3 "" H 7000 4550 50  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0162
U 1 1 5D151F10
P 6000 3900
F 0 "#PWR0162" H 6000 3750 50  0001 C CNN
F 1 "+5V" H 5850 3950 50  0000 C CNN
F 2 "" H 6000 3900 50  0001 C CNN
F 3 "" H 6000 3900 50  0001 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3900 6000 4000
Wire Wire Line
	6000 4000 5900 4000
$Comp
L power:+3V3 #PWR0163
U 1 1 5D1543CF
P 6650 3900
F 0 "#PWR0163" H 6650 3750 50  0001 C CNN
F 1 "+3V3" H 6665 4073 50  0000 C CNN
F 2 "" H 6650 3900 50  0001 C CNN
F 3 "" H 6650 3900 50  0001 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3900 6650 4100
Wire Wire Line
	6650 4100 5900 4100
$Comp
L Device:C_Small C29
U 1 1 5D156EA0
P 6800 4100
F 0 "C29" V 7029 4100 50  0000 C CNN
F 1 "0.1uF" V 6938 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 4100 50  0001 C CNN
F 3 "~" H 6800 4100 50  0001 C CNN
F 4 "Yageo" H 6800 4100 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6800 4100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6800 4100 50  0001 C CNN "Checked"
F 7 "Mouser" H 6800 4100 50  0001 C CNN "Distributor"
	1    6800 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4100 6650 4100
Connection ~ 6650 4100
$Comp
L power:GND #PWR0164
U 1 1 5D15970D
P 6900 4100
F 0 "#PWR0164" H 6900 3850 50  0001 C CNN
F 1 "GND" H 6905 3927 50  0000 C CNN
F 2 "" H 6900 4100 50  0001 C CNN
F 3 "" H 6900 4100 50  0001 C CNN
	1    6900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C28
U 1 1 5D15C03F
P 6200 4000
F 0 "C28" V 5971 4000 50  0000 C CNN
F 1 "0.1uF" V 6062 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 4000 50  0001 C CNN
F 3 "~" H 6200 4000 50  0001 C CNN
F 4 "Yageo" H 6200 4000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6200 4000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6200 4000 50  0001 C CNN "Checked"
F 7 "Mouser" H 6200 4000 50  0001 C CNN "Distributor"
	1    6200 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4000 6000 4000
Connection ~ 6000 4000
$Comp
L power:GND #PWR0165
U 1 1 5D1656C0
P 6300 4000
F 0 "#PWR0165" H 6300 3750 50  0001 C CNN
F 1 "GND" V 6305 3872 50  0000 R CNN
F 2 "" H 6300 4000 50  0001 C CNN
F 3 "" H 6300 4000 50  0001 C CNN
	1    6300 4000
	0    -1   -1   0   
$EndComp
Text GLabel 9150 4950 2    50   Output ~ 0
HDMI_HPD
$Comp
L power:+3V3 #PWR0166
U 1 1 5D16C7AF
P 8750 4900
F 0 "#PWR0166" H 8750 4750 50  0001 C CNN
F 1 "+3V3" H 8765 5073 50  0000 C CNN
F 2 "" H 8750 4900 50  0001 C CNN
F 3 "" H 8750 4900 50  0001 C CNN
	1    8750 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R46
U 1 1 5D16CD31
P 9000 4950
F 0 "R46" V 8804 4950 50  0000 C CNN
F 1 "47k" V 8895 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 4950 50  0001 C CNN
F 3 "~" H 9000 4950 50  0001 C CNN
F 4 "Vishay Dale" H 9000 4950 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 4950 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 4950 50  0001 C CNN "Distributor"
F 7 "y" H 9000 4950 50  0001 C CNN "Checked"
	1    9000 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 4950 9150 4950
Wire Wire Line
	8900 4950 8750 4950
Wire Wire Line
	8750 4950 8750 4900
$Comp
L Device:C_Small C27
U 1 1 5D171FA3
P 6000 4500
F 0 "C27" V 5771 4500 50  0000 C CNN
F 1 "0.1uF" V 5862 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
F 4 "Yageo" H 6000 4500 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6000 4500 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6000 4500 50  0001 C CNN "Checked"
F 7 "Mouser" H 6000 4500 50  0001 C CNN "Distributor"
	1    6000 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5D17234F
P 6100 4500
F 0 "#PWR0167" H 6100 4250 50  0001 C CNN
F 1 "GND" V 6105 4372 50  0000 R CNN
F 2 "" H 6100 4500 50  0001 C CNN
F 3 "" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    -1   -1   0   
$EndComp
Text GLabel 9150 5350 2    50   Output ~ 0
HDMI_SCL
$Comp
L power:+3V3 #PWR0168
U 1 1 5D1829AF
P 8750 5300
F 0 "#PWR0168" H 8750 5150 50  0001 C CNN
F 1 "+3V3" H 8765 5473 50  0000 C CNN
F 2 "" H 8750 5300 50  0001 C CNN
F 3 "" H 8750 5300 50  0001 C CNN
	1    8750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R47
U 1 1 5D1829B9
P 9000 5350
F 0 "R47" V 8804 5350 50  0000 C CNN
F 1 "47k" V 8895 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5350 50  0001 C CNN
F 3 "~" H 9000 5350 50  0001 C CNN
F 4 "Vishay Dale" H 9000 5350 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 5350 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 5350 50  0001 C CNN "Distributor"
F 7 "y" H 9000 5350 50  0001 C CNN "Checked"
	1    9000 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 5350 9150 5350
Wire Wire Line
	8900 5350 8750 5350
Wire Wire Line
	8750 5350 8750 5300
Text GLabel 9150 5750 2    50   Output ~ 0
HDMI_SDA
$Comp
L power:+3V3 #PWR0169
U 1 1 5D18542A
P 8750 5700
F 0 "#PWR0169" H 8750 5550 50  0001 C CNN
F 1 "+3V3" H 8765 5873 50  0000 C CNN
F 2 "" H 8750 5700 50  0001 C CNN
F 3 "" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R48
U 1 1 5D185434
P 9000 5750
F 0 "R48" V 8804 5750 50  0000 C CNN
F 1 "47k" V 8895 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5750 50  0001 C CNN
F 3 "~" H 9000 5750 50  0001 C CNN
F 4 "Vishay Dale" H 9000 5750 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 5750 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 5750 50  0001 C CNN "Distributor"
F 7 "y" H 9000 5750 50  0001 C CNN "Checked"
	1    9000 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 5750 9150 5750
Wire Wire Line
	8900 5750 8750 5750
Wire Wire Line
	8750 5750 8750 5700
NoConn ~ 7650 3200
Wire Wire Line
	5900 5700 7450 5700
Wire Wire Line
	7450 5700 7450 2700
Wire Wire Line
	7450 2700 7650 2700
Text GLabel 5900 5600 2    50   BiDi ~ 0
HDMI_CEC
$Bitmap
Pos 10600 6850
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 01 2C 00 00 00 70 08 06 00 00 00 A4 46 4D 
4D 00 00 00 04 73 42 49 54 08 08 08 08 7C 08 64 88 00 00 06 2D 49 44 41 54 78 9C ED DD BB 8B 1D 
65 1C 87 F1 67 77 45 B1 08 82 26 F1 D2 6A 5A FF 00 0B B5 16 4C 36 12 5D 2F 9D 69 BC 04 0D 5E 62 
A3 A4 B1 D0 CE 4B C4 24 42 2A 05 03 21 85 FA 07 68 B4 8A 60 67 21 12 6D 04 0D 1A 90 04 4C 97 B5 
98 19 CE 64 F7 9C 39 B7 77 DE DF 7B F6 3C 1F 38 EC 16 CB EC 97 2D 1E 66 66 77 CF 80 24 49 92 24 
49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 52 42 8F 00 7B A2 47 
B4 1C 8A 1E D0 F2 10 70 5F F4 08 49 03 C7 81 B3 94 13 AD 3F 80 67 A2 47 D4 8E 02 DF 60 B4 A4 62 
1C 07 36 29 27 5A D7 81 7F 28 23 5A 47 A9 7E 36 5F 63 B4 A4 22 34 C1 2A 25 5A D7 EB 2D 25 44 AB 
09 96 D1 92 0A D1 0E 56 09 D1 6A 82 55 42 B4 DA C1 32 5A 52 01 B6 06 AB 89 D6 EE A0 3D ED 60 45 
47 6B 6B B0 8C 96 14 6C 58 B0 22 A3 B5 35 58 91 D1 1A 16 2C A3 25 05 1A 15 AC A8 68 0D 0B 56 54 
B4 46 05 AB 89 D6 BD 99 F7 48 4B AF 2B 58 11 D1 1A 15 AC 88 68 75 05 6B 13 F8 0A A3 25 65 35 2E 
58 B9 A3 D5 15 AC 4D E0 6F F2 45 6B 5C B0 8C 96 94 D9 24 C1 DA 04 BE 24 4F B4 C6 05 2B 67 B4 26 
09 96 D1 92 32 9A 34 58 B9 A2 35 49 B0 9A 68 3D DD F3 96 49 83 65 B4 34 97 5B A2 07 EC 50 1B F5 
C7 23 54 F7 93 22 ED 06 3E 66 70 C9 1A ED 71 AA 2D 2F 00 7F F6 F4 3D 1E 05 6E ED E9 D8 7D B8 54 
BF 34 86 C1 EA 4F 69 D1 3A 51 7F 5E 42 B4 F6 D7 1F FB 8A D6 67 C4 FF 27 C2 34 DE AB 5F 1A C3 60 
F5 CB 68 8D D6 67 B4 76 01 77 24 3E 66 9F 6E 8B 1E B0 28 56 A3 07 2C 81 0D AA 50 44 FD 45 7C 5B 
13 AD 8D 71 5F 98 C9 7E E0 24 DE D3 D2 84 0C 56 1E 1B 54 F7 91 EE 8A 1E C2 E0 9E 96 D1 D2 C2 31 
58 F9 94 14 AD 3D 18 2D 2D 20 83 95 CF 0A D5 9F 17 18 AD E1 8C 96 C6 32 58 79 95 1A AD A7 A2 87 
D4 8C 96 3A 19 AC FC 4A 8C D6 09 8C 96 16 80 C1 8A 61 B4 BA ED 07 3E 05 EE 89 1E A2 B2 18 AC 38 
46 AB DB 01 E0 14 46 4B 2D 06 2B 96 D1 EA D6 5C 1E 1A 2D 01 06 AB 04 4D B4 3E C2 68 0D 73 80 EA 
F2 F0 EE E8 21 8A 67 B0 CA B0 42 F5 36 30 46 6B B8 75 AA 33 2D A3 B5 E4 0C 56 39 8C 56 37 A3 25 
83 55 98 52 A3 F5 64 F4 90 9A D1 5A 72 06 AB 3C A5 46 EB 50 F4 90 DA 3A DE D3 5A 5A 06 AB 4C A5 
45 6B 2F F0 09 E5 44 EB 20 46 6B 29 F9 7E 58 E5 6A A2 05 F0 0A 70 25 70 0B 0C A2 05 70 2E 72 48 
ED 60 FD F1 45 E0 72 0F C7 FF 17 F8 BC 87 E3 0E 73 31 D3 F7 D1 12 99 E6 3D DD 53 BE 6E 00 5F 00 
77 6E D9 33 E9 7B BA A7 7E 5D 66 FB 99 D6 34 EF E9 9E FA 75 9E ED 67 5A 7F 25 38 EE 2F A8 38 5E 
12 96 AF 7D 79 B8 35 5A 11 BC 3C 54 18 83 B5 18 56 80 67 81 0F 31 5A C3 18 AD 25 E1 3D AC C5 B1 
02 3C 57 7F FE 6A E4 90 5A FB 9E 56 09 DA F7 B4 B4 43 19 AC C5 D2 8E 56 09 67 C7 4D B4 7E 8C 1E 
52 6B A2 E5 43 1D 76 28 83 B5 78 DA D1 2A C1 5E E0 B1 E8 11 2D 07 A9 6E 9A 6B 07 32 58 8B 69 25 
7A C0 16 EE 51 16 25 5C 56 48 D2 44 0C 96 A4 85 61 B0 24 2D 0C 83 25 69 61 18 AC FC 4A FA 0D 56 
49 5B A0 BC 3D 2A 8C C1 CA EF 2C F0 5F F4 88 DA EF C0 B7 D1 23 5A CE 01 57 A3 47 A8 5C 06 2B BF 
33 C0 DB 94 11 AD 2B C0 61 CA 89 D6 59 E0 4D 8C 96 46 30 58 F9 DD A0 FA 9F C0 52 A2 F5 1B E5 44 
6B 13 38 8D D1 D2 08 06 2B 86 D1 EA 66 B4 34 94 C1 8A 63 B4 BA 19 2D 6D 63 B0 62 19 AD 6E 46 4B 
37 31 58 F1 8C 56 B7 D3 C0 31 8C 96 30 58 A5 30 5A DD 8C 96 00 83 55 92 52 A3 F5 5D F4 10 06 BF 
3D 3C 06 5C 0B DE A2 40 06 AB 2C 4D B4 DE A1 9C 68 3D 8F D1 52 21 0C 56 79 6E 00 1F 60 B4 86 D9 
04 4E 61 B4 96 96 C1 2A 93 D1 1A AD 89 D6 5B 18 AD A5 63 B0 CA 55 62 B4 0E 03 17 A2 87 50 45 EB 
24 46 6B E9 18 AC B2 95 16 AD 4B 54 67 5A 46 4B 21 7C 4F F7 C9 9D 07 7E 4D 70 9C 9F A7 FC FA 26 
5A 00 EF 02 B7 27 D8 30 8F 26 5A 67 80 87 83 B7 34 D1 02 78 1F D8 15 B8 45 52 CB 2A F0 1A D5 99 
56 AA C7 BC 5F 9C 63 CF FD 54 F7 B4 52 3E 76 FE 89 19 B7 AC 50 3D 8F F0 6A C2 2D 3E AA 5E 9A D3 
2A F0 3A E9 A2 35 4F B0 20 7D B4 66 0D 16 A4 8F 96 C1 92 12 58 05 DE 20 4D B4 E6 0D 16 C0 03 A4 
8B D6 3C C1 82 B4 D1 32 58 52 22 A9 A2 95 22 58 90 2E 5A F3 06 0B D2 45 CB 60 49 09 A5 88 56 AA 
60 41 9A 68 A5 08 16 A4 89 96 C1 92 12 9B 37 5A 29 83 05 55 B4 2E CC B8 25 65 B0 60 FE 68 19 2C 
A9 07 F3 44 2B 75 B0 60 BE 68 A5 0C 16 0C A2 75 6D 86 2D 06 4B EA C9 AC D1 EA 23 58 30 7B B4 52 
07 0B 66 8F 96 C1 92 7A 34 4B B4 FA 0A 16 CC 16 AD 3E 82 05 55 B4 5E 62 BA 68 19 2C A9 67 6B 4C 
17 AD 3E 83 05 D3 47 AB AF 60 C1 F4 D1 32 58 52 06 D3 44 AB EF 60 C1 74 D1 EA 33 58 50 45 EB 65 
26 8B 96 C1 92 32 99 34 5A 39 82 05 93 47 AB EF 60 C1 E4 D1 32 58 52 46 6B 54 4F 9C E9 8A 56 AE 
60 C1 64 D1 CA 11 2C 98 2C 5A 06 4B CA 6C 5C B4 72 06 0B AA 68 7D 3F 62 4B CE 60 C1 F8 68 19 2C 
29 40 57 B4 72 07 0B 60 1F A3 A3 95 33 58 D0 1D 2D 83 25 05 19 15 AD 88 60 C1 E8 68 E5 0E 16 8C 
8E 96 C1 92 02 0D 8B 56 54 B0 A0 8A D6 0F C4 07 0B 86 47 CB 60 49 C1 D6 A8 9E 38 73 9D F8 60 C1 
F6 68 45 05 0B AA 68 1D 61 10 2D 83 25 15 A0 1D AD E8 60 C1 CD D1 8A 0C 16 DC 1C 2D 83 25 15 A2 
89 56 09 0F 93 80 41 B4 A2 83 05 83 68 FD 14 3D 44 D2 C0 1A B0 1E 3D A2 65 1F F0 60 F4 88 DA 0A 
65 C4 53 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 92 24 49 52 41 
FE 07 39 BD 85 89 55 AA C4 B1 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$EndSCHEMATC
