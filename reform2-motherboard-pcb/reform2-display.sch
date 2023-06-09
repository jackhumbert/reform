EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 12
Title "MNT Reform 2 Internal Display"
Date "2021-01-26"
Rev "2.0R-2D"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0146
U 1 1 5D1D45E5
P 4400 6100
F 0 "#PWR0146" H 4400 5850 50  0001 C CNN
F 1 "GND" H 4405 5927 50  0000 C CNN
F 2 "" H 4400 6100 50  0001 C CNN
F 3 "" H 4400 6100 50  0001 C CNN
	1    4400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5950 4200 6000
Wire Wire Line
	4200 6000 4300 6000
Wire Wire Line
	4600 6000 4600 5950
Wire Wire Line
	4500 5950 4500 6000
Connection ~ 4500 6000
Wire Wire Line
	4500 6000 4600 6000
Wire Wire Line
	4400 5950 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	4400 6000 4500 6000
Wire Wire Line
	4300 5950 4300 6000
Connection ~ 4300 6000
Wire Wire Line
	4300 6000 4400 6000
Wire Wire Line
	4400 6000 4400 6100
NoConn ~ 3350 3250
NoConn ~ 3350 3350
NoConn ~ 3350 3450
NoConn ~ 3350 3550
NoConn ~ 3350 3650
NoConn ~ 3350 3750
NoConn ~ 3350 3850
NoConn ~ 3350 3950
NoConn ~ 3350 4050
NoConn ~ 3350 4150
Text GLabel 3350 2850 0    50   Input ~ 0
DSI_D3_N
Text GLabel 3350 2750 0    50   Input ~ 0
DSI_D3_P
Text GLabel 3350 2250 0    50   Input ~ 0
DSI_D0_N
Text GLabel 3350 2150 0    50   Input ~ 0
DSI_D0_P
Text GLabel 3350 3050 0    50   Input ~ 0
DSI_CLK_N
Text GLabel 3350 2950 0    50   Input ~ 0
DSI_CLK_P
Text GLabel 3350 2450 0    50   Input ~ 0
DSI_D1_N
Text GLabel 3350 2350 0    50   Input ~ 0
DSI_D1_P
Text GLabel 3350 2550 0    50   Input ~ 0
DSI_D2_P
Text GLabel 3350 2650 0    50   Input ~ 0
DSI_D2_N
Text Label 9900 4600 0    50   ~ 0
EDP_LCD_VCC
Text Label 9850 3700 2    50   ~ 0
EDP_BL_ENABLE
Text Label 9850 3800 2    50   ~ 0
EDP_BL_PWM
Text Label 9950 5700 0    50   ~ 0
EDP_BL_VCC
Text GLabel 6100 2850 2    50   Output ~ 0
EDP_TX1_DP
Text GLabel 6100 2750 2    50   Output ~ 0
EDP_TX1_DN
Text GLabel 6100 3150 2    50   Output ~ 0
EDP_TX0_DP
Text GLabel 6100 3050 2    50   Output ~ 0
EDP_TX0_DN
Text GLabel 6100 3450 2    50   Output ~ 0
EDP_AUX_DP
Text GLabel 6100 3350 2    50   Output ~ 0
EDP_AUX_DN
Text Label 5950 4050 0    50   ~ 0
EDP_HPD
$Comp
L power:+1V2 #PWR037
U 1 1 5DA8B6EB
P 1800 1000
F 0 "#PWR037" H 1800 850 50  0001 C CNN
F 1 "+1V2" H 1815 1173 50  0000 C CNN
F 2 "" H 1800 1000 50  0001 C CNN
F 3 "" H 1800 1000 50  0001 C CNN
	1    1800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1750 4500 1950
Wire Wire Line
	3800 1750 3800 1950
Wire Wire Line
	4000 1750 4000 1950
Connection ~ 4000 1750
Wire Wire Line
	4200 1750 4200 1950
Connection ~ 4200 1750
Wire Wire Line
	4200 1750 4300 1750
Wire Wire Line
	4300 1950 4300 1750
Connection ~ 4300 1750
Wire Wire Line
	4300 1750 4400 1750
Wire Wire Line
	4400 1750 4400 1950
Connection ~ 4400 1750
Wire Wire Line
	4400 1750 4500 1750
Wire Wire Line
	5000 4450 5100 4450
Wire Wire Line
	5100 4450 5100 4350
Wire Wire Line
	5100 4350 5000 4350
Wire Wire Line
	5000 4550 5100 4550
Wire Wire Line
	5100 4550 5100 4450
Connection ~ 5100 4450
Wire Wire Line
	5000 4650 5100 4650
Wire Wire Line
	5100 4650 5100 4550
Connection ~ 5100 4550
Wire Wire Line
	5950 4150 5000 4150
Wire Wire Line
	5000 5450 5200 5450
Wire Wire Line
	5200 5450 5200 5350
Wire Wire Line
	5000 5550 5200 5550
Wire Wire Line
	5200 5550 5200 5450
Connection ~ 5200 5450
NoConn ~ 3350 5750
NoConn ~ 3350 5650
NoConn ~ 3350 5550
$Comp
L Device:R_Small R64
U 1 1 5DAA503E
P 5750 4050
F 0 "R64" V 5554 4050 50  0000 C CNN
F 1 "51k" V 5645 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5750 4050 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
F 4 "Yageo" H 5750 4050 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0751KL" H 5750 4050 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5750 4050 50  0001 C CNN "Checked"
F 7 "Mouser" H 5750 4050 50  0001 C CNN "Distributor"
	1    5750 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4050 5650 4050
Wire Wire Line
	5850 4050 5950 4050
$Comp
L power:GND #PWR038
U 1 1 5DAA7616
P 5400 3950
F 0 "#PWR038" H 5400 3700 50  0001 C CNN
F 1 "GND" H 5405 3777 50  0000 C CNN
F 2 "" H 5400 3950 50  0001 C CNN
F 3 "" H 5400 3950 50  0001 C CNN
	1    5400 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3950 5000 3950
Text GLabel 5950 4150 2    50   Input ~ 0
EDP_RESETn
Text GLabel 3050 4950 0    50   Output ~ 0
EDP_IRQ
NoConn ~ 5000 2150
NoConn ~ 5000 2250
NoConn ~ 5000 2450
NoConn ~ 5000 2550
$Comp
L Device:R_Small R77
U 1 1 60F2545C
P 5300 3950
F 0 "R77" V 5200 4000 50  0000 L CNN
F 1 "0" V 5300 3950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 3950 50  0001 C CNN
F 3 "~" H 5300 3950 50  0001 C CNN
F 4 "Vishay Dale" H 5300 3950 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 5300 3950 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 5300 3950 50  0001 C CNN "Distributor"
F 7 "y" H 5300 3950 50  0001 C CNN "Checked"
	1    5300 3950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C101
U 1 1 5E2CC244
P 2550 1450
F 0 "C101" H 2642 1496 50  0000 L CNN
F 1 "0.1uF" H 2642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2550 1450 50  0001 C CNN
F 3 "~" H 2550 1450 50  0001 C CNN
F 4 "Yageo" H 2550 1450 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 2550 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2550 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 2550 1450 50  0001 C CNN "Distributor"
	1    2550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C102
U 1 1 5E2CC570
P 2950 1450
F 0 "C102" H 3042 1496 50  0000 L CNN
F 1 "10nF" H 3042 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2950 1450 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
F 4 "KEMET" H 2950 1450 50  0001 C CNN "Manufacturer"
F 5 "C0603C103K5RAC3190" H 2950 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2950 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 2950 1450 50  0001 C CNN "Distributor"
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C104
U 1 1 5E2CC9EE
P 3800 1450
F 0 "C104" H 3892 1496 50  0000 L CNN
F 1 "10nF" H 3892 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3800 1450 50  0001 C CNN
F 3 "~" H 3800 1450 50  0001 C CNN
F 4 "KEMET" H 3800 1450 50  0001 C CNN "Manufacturer"
F 5 "C0603C103K5RAC3190" H 3800 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3800 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 3800 1450 50  0001 C CNN "Distributor"
	1    3800 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C103
U 1 1 5E2CCF1D
P 3400 1450
F 0 "C103" H 3492 1496 50  0000 L CNN
F 1 "0.1uF" H 3492 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 1450 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
F 4 "Yageo" H 3400 1450 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 3400 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3400 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 3400 1450 50  0001 C CNN "Distributor"
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C100
U 1 1 5E2CD479
P 2200 1450
F 0 "C100" H 2292 1496 50  0000 L CNN
F 1 "1uF" H 2292 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2200 1450 50  0001 C CNN
F 3 "~" H 2200 1450 50  0001 C CNN
F 4 "Taiyo Yuden" H 2200 1450 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 2200 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2200 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 2200 1450 50  0001 C CNN "Distributor"
	1    2200 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C99
U 1 1 5E2CDA6F
P 1800 1450
F 0 "C99" H 1892 1496 50  0000 L CNN
F 1 "10uF" H 1892 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 1450 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
F 4 "Murata" H 1800 1450 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 1800 1450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 1800 1450 50  0001 C CNN "Checked"
F 7 "Mouser" H 1800 1450 50  0001 C CNN "Distributor"
	1    1800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1350 2200 1350
Connection ~ 1800 1350
Connection ~ 2200 1350
Wire Wire Line
	2200 1350 2550 1350
Connection ~ 2550 1350
Wire Wire Line
	2550 1350 2950 1350
Connection ~ 2950 1350
Wire Wire Line
	2950 1350 3400 1350
Connection ~ 3400 1350
Wire Wire Line
	3400 1350 3800 1350
$Comp
L power:GND #PWR0209
U 1 1 5E2D3EA7
P 1800 1650
F 0 "#PWR0209" H 1800 1400 50  0001 C CNN
F 1 "GND" H 1805 1477 50  0000 C CNN
F 2 "" H 1800 1650 50  0001 C CNN
F 3 "" H 1800 1650 50  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1650 1800 1550
Wire Wire Line
	3800 1550 3400 1550
Connection ~ 1800 1550
Connection ~ 2200 1550
Wire Wire Line
	2200 1550 1800 1550
Connection ~ 2550 1550
Wire Wire Line
	2550 1550 2200 1550
Connection ~ 2950 1550
Wire Wire Line
	2950 1550 2550 1550
Connection ~ 3400 1550
Wire Wire Line
	3400 1550 2950 1550
$Comp
L Device:C_Small C113
U 1 1 5E2E40AD
P 5850 4550
F 0 "C113" H 5942 4596 50  0000 L CNN
F 1 "0.1uF" H 5942 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 4550 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
F 4 "Yageo" H 5850 4550 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5850 4550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5850 4550 50  0001 C CNN "Checked"
F 7 "Mouser" H 5850 4550 50  0001 C CNN "Distributor"
	1    5850 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C116
U 1 1 5E2E40B7
P 6250 4550
F 0 "C116" H 6342 4596 50  0000 L CNN
F 1 "10nF" H 6342 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 4550 50  0001 C CNN
F 3 "~" H 6250 4550 50  0001 C CNN
F 4 "KEMET" H 6250 4550 50  0001 C CNN "Manufacturer"
F 5 "C0603C103K5RAC3190" H 6250 4550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6250 4550 50  0001 C CNN "Checked"
F 7 "Mouser" H 6250 4550 50  0001 C CNN "Distributor"
	1    6250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C118
U 1 1 5E2E40C1
P 6700 4550
F 0 "C118" H 6792 4596 50  0000 L CNN
F 1 "0.1uF" H 6792 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6700 4550 50  0001 C CNN
F 3 "~" H 6700 4550 50  0001 C CNN
F 4 "Yageo" H 6700 4550 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6700 4550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6700 4550 50  0001 C CNN "Checked"
F 7 "Mouser" H 6700 4550 50  0001 C CNN "Distributor"
	1    6700 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C111
U 1 1 5E2E40CB
P 5500 4550
F 0 "C111" H 5592 4596 50  0000 L CNN
F 1 "1uF" H 5592 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 4550 50  0001 C CNN
F 3 "~" H 5500 4550 50  0001 C CNN
F 4 "Taiyo Yuden" H 5500 4550 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 5500 4550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5500 4550 50  0001 C CNN "Checked"
F 7 "Mouser" H 5500 4550 50  0001 C CNN "Distributor"
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4450 5500 4450
Connection ~ 5500 4450
Wire Wire Line
	5500 4450 5850 4450
Connection ~ 5850 4450
Wire Wire Line
	5850 4450 6250 4450
Connection ~ 6250 4450
Wire Wire Line
	6250 4450 6700 4450
Connection ~ 6700 4450
Wire Wire Line
	7050 4650 6700 4650
Connection ~ 5850 4650
Wire Wire Line
	5850 4650 5500 4650
Connection ~ 6250 4650
Wire Wire Line
	6250 4650 5850 4650
Connection ~ 6700 4650
Wire Wire Line
	6700 4650 6250 4650
Wire Wire Line
	6700 4450 7050 4450
$Comp
L power:GND #PWR0210
U 1 1 5E2EC991
P 7050 4700
F 0 "#PWR0210" H 7050 4450 50  0001 C CNN
F 1 "GND" H 7055 4527 50  0000 C CNN
F 2 "" H 7050 4700 50  0001 C CNN
F 3 "" H 7050 4700 50  0001 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4700 7050 4650
$Comp
L Device:C_Small C115
U 1 1 5E2F21BD
P 6200 5450
F 0 "C115" H 6292 5496 50  0000 L CNN
F 1 "0.1uF" H 6292 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 5450 50  0001 C CNN
F 3 "~" H 6200 5450 50  0001 C CNN
F 4 "Yageo" H 6200 5450 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6200 5450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6200 5450 50  0001 C CNN "Checked"
F 7 "Mouser" H 6200 5450 50  0001 C CNN "Distributor"
	1    6200 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C112
U 1 1 5E2F21DB
P 5500 5450
F 0 "C112" H 5592 5496 50  0000 L CNN
F 1 "10uF" H 5592 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 5450 50  0001 C CNN
F 3 "~" H 5500 5450 50  0001 C CNN
F 4 "Murata" H 5500 5450 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 5500 5450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5500 5450 50  0001 C CNN "Checked"
F 7 "Mouser" H 5500 5450 50  0001 C CNN "Distributor"
	1    5500 5450
	1    0    0    -1  
$EndComp
Connection ~ 5500 5350
Wire Wire Line
	5500 5350 5850 5350
Wire Wire Line
	5850 5550 5500 5550
Connection ~ 5200 5350
Wire Wire Line
	5200 5350 5500 5350
Wire Wire Line
	5000 5350 5200 5350
$Comp
L Device:C_Small C114
U 1 1 5E2F97D4
P 5850 5450
F 0 "C114" H 5942 5496 50  0000 L CNN
F 1 "1uF" H 5942 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 5450 50  0001 C CNN
F 3 "~" H 5850 5450 50  0001 C CNN
F 4 "Taiyo Yuden" H 5850 5450 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 5850 5450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5850 5450 50  0001 C CNN "Checked"
F 7 "Mouser" H 5850 5450 50  0001 C CNN "Distributor"
	1    5850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5350 5850 5350
Connection ~ 6200 5350
Connection ~ 5850 5350
Wire Wire Line
	5850 5550 6200 5550
Connection ~ 5850 5550
Connection ~ 6200 5550
Wire Wire Line
	7350 5600 7350 5550
$Comp
L power:GND #PWR0211
U 1 1 5E2F21F5
P 7350 5600
F 0 "#PWR0211" H 7350 5350 50  0001 C CNN
F 1 "GND" H 7355 5427 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
Connection ~ 6600 5550
Wire Wire Line
	7350 5550 6600 5550
Connection ~ 6600 5350
$Comp
L Device:C_Small C117
U 1 1 5E2F21D1
P 6600 5450
F 0 "C117" H 6692 5496 50  0000 L CNN
F 1 "10nF" H 6692 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 5450 50  0001 C CNN
F 3 "~" H 6600 5450 50  0001 C CNN
F 4 "KEMET" H 6600 5450 50  0001 C CNN "Manufacturer"
F 5 "C0603C103K5RAC3190" H 6600 5450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6600 5450 50  0001 C CNN "Checked"
F 7 "Mouser" H 6600 5450 50  0001 C CNN "Distributor"
	1    6600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR039
U 1 1 5DA98038
P 7350 5300
F 0 "#PWR039" H 7350 5150 50  0001 C CNN
F 1 "+1V8" H 7365 5473 50  0000 C CNN
F 2 "" H 7350 5300 50  0001 C CNN
F 3 "" H 7350 5300 50  0001 C CNN
	1    7350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5350 6600 5350
Wire Wire Line
	6200 5550 6600 5550
$Comp
L Device:C_Small C105
U 1 1 5E31225C
P 5600 2750
F 0 "C105" V 5371 2750 50  0000 C CNN
F 1 "0.1uF" V 5462 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 2750 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
F 4 "Yageo" H 5600 2750 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5600 2750 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5600 2750 50  0001 C CNN "Checked"
F 7 "Mouser" H 5600 2750 50  0001 C CNN "Distributor"
	1    5600 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2750 5500 2750
Wire Wire Line
	5700 2750 6100 2750
$Comp
L Device:C_Small C108
U 1 1 5E316FF8
P 5850 2850
F 0 "C108" V 5621 2850 50  0000 C CNN
F 1 "0.1uF" V 5712 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 2850 50  0001 C CNN
F 3 "~" H 5850 2850 50  0001 C CNN
F 4 "Yageo" H 5850 2850 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5850 2850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5850 2850 50  0001 C CNN "Checked"
F 7 "Mouser" H 5850 2850 50  0001 C CNN "Distributor"
	1    5850 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 2850 6100 2850
Wire Wire Line
	5750 2850 5000 2850
$Comp
L Device:C_Small C106
U 1 1 5E31C261
P 5600 3050
F 0 "C106" V 5550 2950 50  0000 C CNN
F 1 "0.1uF" V 5462 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 3050 50  0001 C CNN
F 3 "~" H 5600 3050 50  0001 C CNN
F 4 "Yageo" H 5600 3050 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5600 3050 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5600 3050 50  0001 C CNN "Checked"
F 7 "Mouser" H 5600 3050 50  0001 C CNN "Distributor"
	1    5600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3050 5500 3050
Wire Wire Line
	5700 3050 6100 3050
$Comp
L Device:C_Small C109
U 1 1 5E31C26D
P 5850 3150
F 0 "C109" V 5800 3250 50  0000 C CNN
F 1 "0.1uF" V 5712 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 3150 50  0001 C CNN
F 3 "~" H 5850 3150 50  0001 C CNN
F 4 "Yageo" H 5850 3150 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5850 3150 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5850 3150 50  0001 C CNN "Checked"
F 7 "Mouser" H 5850 3150 50  0001 C CNN "Distributor"
	1    5850 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3150 5000 3150
Wire Wire Line
	5950 3150 6100 3150
$Comp
L Device:C_Small C107
U 1 1 5E3225A9
P 5600 3350
F 0 "C107" V 5550 3250 50  0000 C CNN
F 1 "0.1uF" V 5462 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 3350 50  0001 C CNN
F 3 "~" H 5600 3350 50  0001 C CNN
F 4 "Yageo" H 5600 3350 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5600 3350 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5600 3350 50  0001 C CNN "Checked"
F 7 "Mouser" H 5600 3350 50  0001 C CNN "Distributor"
	1    5600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3350 5500 3350
Wire Wire Line
	5700 3350 6100 3350
$Comp
L Device:C_Small C110
U 1 1 5E3225B5
P 5850 3450
F 0 "C110" V 5800 3550 50  0000 C CNN
F 1 "0.1uF" V 5712 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 3450 50  0001 C CNN
F 3 "~" H 5850 3450 50  0001 C CNN
F 4 "Yageo" H 5850 3450 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 5850 3450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5850 3450 50  0001 C CNN "Checked"
F 7 "Mouser" H 5850 3450 50  0001 C CNN "Distributor"
	1    5850 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3450 5000 3450
Wire Wire Line
	5950 3450 6100 3450
$Comp
L Device:C_Small C131
U 1 1 5ED877D7
P 8950 5800
F 0 "C131" H 9042 5846 50  0000 L CNN
F 1 "10uF" H 9042 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8950 5800 50  0001 C CNN
F 3 "~" H 8950 5800 50  0001 C CNN
F 4 "Murata" H 8950 5800 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 8950 5800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8950 5800 50  0001 C CNN "Checked"
F 7 "Mouser" H 8950 5800 50  0001 C CNN "Distributor"
	1    8950 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C133
U 1 1 5ED9B07A
P 9250 5800
F 0 "C133" H 9342 5846 50  0000 L CNN
F 1 "10uF" H 9342 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9250 5800 50  0001 C CNN
F 3 "~" H 9250 5800 50  0001 C CNN
F 4 "Murata" H 9250 5800 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 9250 5800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 9250 5800 50  0001 C CNN "Checked"
F 7 "Mouser" H 9250 5800 50  0001 C CNN "Distributor"
	1    9250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C135
U 1 1 5ED9B22D
P 9600 5800
F 0 "C135" H 9692 5846 50  0000 L CNN
F 1 "0.1uF" H 9692 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9600 5800 50  0001 C CNN
F 3 "~" H 9600 5800 50  0001 C CNN
F 4 "Yageo" H 9600 5800 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 9600 5800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 9600 5800 50  0001 C CNN "Checked"
F 7 "Mouser" H 9600 5800 50  0001 C CNN "Distributor"
	1    9600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5700 9250 5700
Wire Wire Line
	9250 5700 9600 5700
Connection ~ 9250 5700
Wire Wire Line
	9600 5700 9950 5700
Connection ~ 9600 5700
$Comp
L power:GND #PWR078
U 1 1 5EDAA95D
P 8950 6000
F 0 "#PWR078" H 8950 5750 50  0001 C CNN
F 1 "GND" H 8955 5827 50  0000 C CNN
F 2 "" H 8950 6000 50  0001 C CNN
F 3 "" H 8950 6000 50  0001 C CNN
	1    8950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6000 8950 5900
Wire Wire Line
	9250 5900 8950 5900
Connection ~ 8950 5900
Wire Wire Line
	9250 5900 9600 5900
Connection ~ 9250 5900
$Comp
L Device:C_Small C132
U 1 1 5EDC6053
P 8950 4700
F 0 "C132" H 9042 4746 50  0000 L CNN
F 1 "10uF" H 9042 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8950 4700 50  0001 C CNN
F 3 "~" H 8950 4700 50  0001 C CNN
F 4 "Murata" H 8950 4700 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 8950 4700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8950 4700 50  0001 C CNN "Checked"
F 7 "Mouser" H 8950 4700 50  0001 C CNN "Distributor"
	1    8950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C134
U 1 1 5EDC605D
P 9250 4700
F 0 "C134" H 9342 4746 50  0000 L CNN
F 1 "10uF" H 9342 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9250 4700 50  0001 C CNN
F 3 "~" H 9250 4700 50  0001 C CNN
F 4 "Murata" H 9250 4700 50  0001 C CNN "Manufacturer"
F 5 "GRM188R6YA106MA73D" H 9250 4700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 9250 4700 50  0001 C CNN "Checked"
F 7 "Mouser" H 9250 4700 50  0001 C CNN "Distributor"
	1    9250 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C136
U 1 1 5EDC6067
P 9600 4700
F 0 "C136" H 9692 4746 50  0000 L CNN
F 1 "0.1uF" H 9692 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9600 4700 50  0001 C CNN
F 3 "~" H 9600 4700 50  0001 C CNN
F 4 "Yageo" H 9600 4700 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 9600 4700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 9600 4700 50  0001 C CNN "Checked"
F 7 "Mouser" H 9600 4700 50  0001 C CNN "Distributor"
	1    9600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 9250 4600
Wire Wire Line
	9250 4600 9600 4600
Connection ~ 9250 4600
Connection ~ 9600 4600
$Comp
L power:GND #PWR080
U 1 1 5EDC6077
P 8950 4850
F 0 "#PWR080" H 8950 4600 50  0001 C CNN
F 1 "GND" H 8955 4677 50  0000 C CNN
F 2 "" H 8950 4850 50  0001 C CNN
F 3 "" H 8950 4850 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4850 8950 4800
Wire Wire Line
	9250 4800 8950 4800
Connection ~ 8950 4800
Wire Wire Line
	9250 4800 9600 4800
Connection ~ 9250 4800
Wire Wire Line
	9600 4600 9900 4600
Text GLabel 8850 3700 0    50   Input ~ 0
BACKLIGHT_EN
Text GLabel 8850 3800 0    50   Input ~ 0
BACKLIGHT_PWM
$Comp
L reform2:SN65DSI86ZQER U10
U 1 1 5D1D2542
P 4050 3750
F 0 "U10" H 3500 5550 50  0000 C CNN
F 1 "SN65DSI86IPAPQ1" H 3750 1550 50  0000 C CNN
F 2 "Package_QFP:HTQFP-64-1EP_10x10mm_P0.5mm_EP8x8mm" H 3500 1100 50  0001 L BNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65dsi86-q1.pdf" H 4050 3750 50  0001 L BNN
F 4 "Texas Instruments" H 4050 3750 50  0001 C CNN "Manufacturer"
F 5 "SN65DSI86IPAPQ1" H 4050 3750 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4050 3750 50  0001 C CNN "Checked"
F 7 "Mouser" H 4050 3750 50  0001 C CNN "Distributor"
	1    4050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1350 4200 1350
Wire Wire Line
	4200 1350 4200 1750
Connection ~ 3800 1350
Text Label 5150 2750 0    50   ~ 0
ML1N
Text Label 5150 2850 0    50   ~ 0
ML1P
Text Label 5150 3050 0    50   ~ 0
ML0N
Text Label 5150 3150 0    50   ~ 0
ML0P
Text Label 5050 3350 0    50   ~ 0
EDAUXN
Text Label 5050 3450 0    50   ~ 0
EDAUXP
$Comp
L power:+1V8 #PWR076
U 1 1 5DA71177
P 2350 4650
F 0 "#PWR076" H 2350 4500 50  0001 C CNN
F 1 "+1V8" H 2365 4823 50  0000 C CNN
F 2 "" H 2350 4650 50  0001 C CNN
F 3 "" H 2350 4650 50  0001 C CNN
	1    2350 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR075
U 1 1 5DA70B88
P 2200 4600
F 0 "#PWR075" H 2200 4450 50  0001 C CNN
F 1 "+1V8" H 2215 4773 50  0000 C CNN
F 2 "" H 2200 4600 50  0001 C CNN
F 3 "" H 2200 4600 50  0001 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4650 2350 4750
Wire Wire Line
	2200 4600 2200 4750
Wire Wire Line
	2200 5250 3350 5250
Connection ~ 2200 5250
Wire Wire Line
	2200 4950 2200 5250
Wire Wire Line
	2350 5350 3350 5350
Connection ~ 2350 5350
Wire Wire Line
	2150 5350 2350 5350
Wire Wire Line
	2350 4950 2350 5350
$Comp
L Device:R_Small R132
U 1 1 5DA1EC52
P 2350 4850
F 0 "R132" V 2250 4650 50  0000 C CNN
F 1 "4.7k" V 2250 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2350 4850 50  0001 C CNN
F 3 "~" H 2350 4850 50  0001 C CNN
F 4 "Yageo" H 2350 4850 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 2350 4850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2350 4850 50  0001 C CNN "Checked"
F 7 "Mouser" H 2350 4850 50  0001 C CNN "Distributor"
	1    2350 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R131
U 1 1 5DA1E94B
P 2200 4850
F 0 "R131" V 2300 4650 50  0000 C CNN
F 1 "4.7k" V 2300 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 4850 50  0001 C CNN
F 3 "~" H 2200 4850 50  0001 C CNN
F 4 "Yageo" H 2200 4850 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 2200 4850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2200 4850 50  0001 C CNN "Checked"
F 7 "Mouser" H 2200 4850 50  0001 C CNN "Distributor"
	1    2200 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 5350 1850 5350
$Comp
L Device:R_Small R130
U 1 1 5DA0B272
P 2050 5350
F 0 "R130" V 2150 5350 50  0000 C CNN
F 1 "0" V 2050 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 5350 50  0001 C CNN
F 3 "~" H 2050 5350 50  0001 C CNN
F 4 "Vishay Dale" H 2050 5350 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 2050 5350 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 2050 5350 50  0001 C CNN "Distributor"
F 7 "y" H 2050 5350 50  0001 C CNN "Checked"
	1    2050 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5250 2200 5250
Wire Wire Line
	1950 5250 1850 5250
$Comp
L Device:R_Small R129
U 1 1 5D9F4EBD
P 2050 5250
F 0 "R129" V 1950 5250 50  0000 C CNN
F 1 "0" V 2050 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2050 5250 50  0001 C CNN
F 3 "~" H 2050 5250 50  0001 C CNN
F 4 "Vishay Dale" H 2050 5250 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 2050 5250 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 2050 5250 50  0001 C CNN "Distributor"
F 7 "y" H 2050 5250 50  0001 C CNN "Checked"
	1    2050 5250
	0    1    1    0   
$EndComp
Text Notes 1000 5000 0    50   ~ 0
I2C Address: 0x2C
Wire Wire Line
	1050 5100 3350 5100
Wire Wire Line
	1050 5150 1050 5100
$Comp
L power:GND #PWR036
U 1 1 5DAABCBB
P 1050 5150
F 0 "#PWR036" H 1050 4900 50  0001 C CNN
F 1 "GND" H 1055 4977 50  0000 C CNN
F 2 "" H 1050 5150 50  0001 C CNN
F 3 "" H 1050 5150 50  0001 C CNN
	1    1050 5150
	1    0    0    -1  
$EndComp
Text GLabel 1850 5350 0    50   BiDi ~ 0
EDP_SDA
Text GLabel 1850 5250 0    50   Input ~ 0
EDP_SCL
Wire Wire Line
	3050 4950 3350 4950
Wire Wire Line
	4000 1750 4200 1750
Wire Wire Line
	5000 4750 5100 4750
Wire Wire Line
	5100 4750 5100 4650
Connection ~ 5100 4650
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J24
U 1 1 5D455F41
P 9200 2300
F 0 "J24" H 9250 3217 50  0000 C CNN
F 1 "EDP_HEADER" H 9250 3126 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x15_P2.00mm_Vertical" H 9200 2300 50  0001 C CNN
F 3 "~" H 9200 2300 50  0001 C CNN
F 4 "Molex" H 9200 2300 50  0001 C CNN "Manufacturer"
F 5 "87758-3016" H 9200 2300 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 9200 2300 50  0001 C CNN "Checked"
F 7 "Mouser" H 9200 2300 50  0001 C CNN "Distributor"
	1    9200 2300
	1    0    0    -1  
$EndComp
Text GLabel 9500 1700 2    50   Input ~ 0
EDP_TX1_DP
Text GLabel 9000 1700 0    50   Input ~ 0
EDP_TX1_DN
Text GLabel 9000 1900 0    50   Input ~ 0
EDP_TX0_DP
Text GLabel 9500 1800 2    50   Input ~ 0
EDP_TX0_DN
Text GLabel 9000 2000 0    50   Input ~ 0
EDP_AUX_DP
Text GLabel 9500 2000 2    50   Input ~ 0
EDP_AUX_DN
Text Label 9500 2100 0    50   ~ 0
EDP_LCD_VCC
Text Label 9000 2200 2    50   ~ 0
EDP_LCD_VCC
Text Label 9500 2200 0    50   ~ 0
EDP_LCD_TEST
Text Label 9000 2400 2    50   ~ 0
EDP_HPD
Text Label 9500 2600 0    50   ~ 0
EDP_BL_ENABLE
Text Label 9000 2700 2    50   ~ 0
EDP_BL_PWM
Text Label 9500 2800 0    50   ~ 0
EDP_BL_VCC
Text Label 9000 2900 2    50   ~ 0
EDP_BL_VCC
Text Label 9500 2900 0    50   ~ 0
EDP_BL_VCC
Text Label 9000 3000 2    50   ~ 0
EDP_BL_VCC
NoConn ~ 9500 3000
NoConn ~ 9000 2800
NoConn ~ 9500 2700
NoConn ~ 9000 1600
$Comp
L power:GND #PWR0227
U 1 1 5D476721
P 10200 2550
F 0 "#PWR0227" H 10200 2300 50  0001 C CNN
F 1 "GND" H 10205 2377 50  0000 C CNN
F 2 "" H 10200 2550 50  0001 C CNN
F 3 "" H 10200 2550 50  0001 C CNN
	1    10200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2550 10200 2500
Wire Wire Line
	10200 2500 9500 2500
Wire Wire Line
	9500 2400 10200 2400
Wire Wire Line
	10200 2400 10200 2500
Connection ~ 10200 2500
Wire Wire Line
	10200 2400 10200 1900
Wire Wire Line
	10200 1900 9500 1900
Connection ~ 10200 2400
Wire Wire Line
	9500 1600 10200 1600
Wire Wire Line
	10200 1600 10200 1900
Connection ~ 10200 1900
$Comp
L power:GND #PWR0228
U 1 1 5D4966FE
P 8350 2700
F 0 "#PWR0228" H 8350 2450 50  0001 C CNN
F 1 "GND" H 8355 2527 50  0000 C CNN
F 2 "" H 8350 2700 50  0001 C CNN
F 3 "" H 8350 2700 50  0001 C CNN
	1    8350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2700 8350 2600
Wire Wire Line
	8350 2600 9000 2600
Wire Wire Line
	9000 2500 8350 2500
Wire Wire Line
	8350 2500 8350 2600
Connection ~ 8350 2600
Wire Wire Line
	9000 2100 8350 2100
Wire Wire Line
	8350 2100 8350 2500
Connection ~ 8350 2500
Wire Wire Line
	9000 1800 8350 1800
Wire Wire Line
	8350 1800 8350 2100
Connection ~ 8350 2100
Text Notes 8200 3550 0    50   ~ 0
PWM period 10000
NoConn ~ 9500 2300
NoConn ~ 9000 2300
NoConn ~ 9500 2200
Wire Wire Line
	8850 3800 9850 3800
Wire Wire Line
	8850 3700 9850 3700
Text GLabel 4150 6750 2    50   Input ~ 0
EDP_RESETn
$Comp
L Device:R_Small R?
U 1 1 60411D91
P 3950 6750
AR Path="/5CC81028/60411D91" Ref="R?"  Part="1" 
AR Path="/5D06A7B6/60411D91" Ref="R82"  Part="1" 
F 0 "R82" V 4050 6750 50  0000 C CNN
F 1 "100k" V 3850 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3950 6750 50  0001 C CNN
F 3 "~" H 3950 6750 50  0001 C CNN
F 4 "Vishay Dale" H 3950 6750 50  0001 C CNN "Manufacturer"
F 5 "CRCW0603100KJNEAC" H 3950 6750 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3950 6750 50  0001 C CNN "Checked"
F 7 "Mouser" H 3950 6750 50  0001 C CNN "Distributor"
	1    3950 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6750 3750 6750
Wire Wire Line
	4150 6750 4050 6750
$Comp
L power:GND #PWR035
U 1 1 6041D6C2
P 3750 6850
F 0 "#PWR035" H 3750 6600 50  0001 C CNN
F 1 "GND" H 3755 6677 50  0000 C CNN
F 2 "" H 3750 6850 50  0001 C CNN
F 3 "" H 3750 6850 50  0001 C CNN
	1    3750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6850 3750 6750
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5F775A89
P 1800 1150
AR Path="/5D06AC46/5F775A89" Ref="FB?"  Part="1" 
AR Path="/5D06A7B6/5F775A89" Ref="FB12"  Part="1" 
F 0 "FB12" H 1900 1196 50  0000 L CNN
F 1 "100@100MHz 3A" H 1900 1105 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 1730 1150 50  0001 C CNN
F 3 "~" H 1800 1150 50  0001 C CNN
F 4 "Murata" H 1800 1150 50  0001 C CNN "Manufacturer"
F 5 "BLM18KG101TN1D" H 1800 1150 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 1800 1150 50  0001 C CNN "Checked"
F 7 "Mouser" H 1800 1150 50  0001 C CNN "Distributor"
	1    1800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1250 1800 1350
Wire Wire Line
	1800 1050 1800 1000
Wire Wire Line
	8950 4550 8950 4600
Connection ~ 8950 4600
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5F7F1BF0
P 8950 5550
AR Path="/5D06AC46/5F7F1BF0" Ref="FB?"  Part="1" 
AR Path="/5D06A7B6/5F7F1BF0" Ref="FB15"  Part="1" 
F 0 "FB15" H 9050 5596 50  0000 L CNN
F 1 "100@100MHz 3A" H 9050 5505 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 8880 5550 50  0001 C CNN
F 3 "~" H 8950 5550 50  0001 C CNN
F 4 "Murata" H 8950 5550 50  0001 C CNN "Manufacturer"
F 5 "BLM18KG101TN1D" H 8950 5550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8950 5550 50  0001 C CNN "Checked"
F 7 "Mouser" H 8950 5550 50  0001 C CNN "Distributor"
	1    8950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5700 8950 5650
Connection ~ 8950 5700
Wire Wire Line
	6600 5350 7350 5350
Text GLabel 8900 5250 0    50   Input ~ 0
USB_PWR
Wire Wire Line
	8900 5250 8950 5250
Wire Wire Line
	8950 5250 8950 5450
Wire Wire Line
	7350 5300 7350 5350
Wire Wire Line
	7050 1350 4200 1350
Wire Wire Line
	7050 1350 7050 4450
Connection ~ 4200 1350
NoConn ~ 3350 4400
NoConn ~ 3350 4500
NoConn ~ 3350 4600
NoConn ~ 3350 4700
Text GLabel 8800 4150 0    50   Input ~ 0
3V3_PWR_AUX
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5F7D63B7
P 8950 4450
AR Path="/5D06AC46/5F7D63B7" Ref="FB?"  Part="1" 
AR Path="/5D06A7B6/5F7D63B7" Ref="FB14"  Part="1" 
F 0 "FB14" H 9050 4496 50  0000 L CNN
F 1 "100@100MHz 3A" H 9050 4405 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 8880 4450 50  0001 C CNN
F 3 "~" H 8950 4450 50  0001 C CNN
F 4 "Murata" H 8950 4450 50  0001 C CNN "Manufacturer"
F 5 "BLM18KG101TN1D" H 8950 4450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8950 4450 50  0001 C CNN "Checked"
F 7 "Mouser" H 8950 4450 50  0001 C CNN "Distributor"
	1    8950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4150 8950 4150
Wire Wire Line
	8950 4150 8950 4350
Wire Wire Line
	3800 1750 3900 1750
Wire Wire Line
	3900 1950 3900 1750
Connection ~ 3900 1750
Wire Wire Line
	3900 1750 4000 1750
$Comp
L power:PWR_FLAG #FLG0123
U 1 1 64C4E0F7
P 4200 1350
F 0 "#FLG0123" H 4200 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 1523 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "~" H 4200 1350 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
Text Notes 2600 4850 0    50   ~ 0
opt. hotplug IRQ
Text Notes 8900 1250 0    50   ~ 0
Display Connector
Text Notes 3700 1050 0    50   ~ 0
MIPI DSI to eDP Bridge
$EndSCHEMATC
