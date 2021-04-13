EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 12
Title "MNT Reform 2"
Date "2021-01-26"
Rev "2.0R-2D"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
Text GLabel 3100 2650 2    50   Output ~ 0
EDP_RESETn
Text GLabel 3100 2750 2    50   Input ~ 0
EDP_IRQ
Text GLabel 1300 4550 0    50   Input ~ 0
IMX_JTAG_TDI
NoConn ~ 3050 2550
NoConn ~ 3050 2450
Text GLabel 1300 5250 0    50   Output ~ 0
LPC_SS0
NoConn ~ 3050 6750
Text GLabel 1300 2650 0    50   Output ~ 0
PCIE1_RESETn
Text Notes 4500 900  0    50   ~ 0
NOSTUFF
Text Notes 5200 900  0    50   ~ 0
NOSTUFF
Wire Wire Line
	1250 4950 1200 4950
Connection ~ 1250 4950
Wire Wire Line
	1250 5050 1250 4950
Wire Wire Line
	1200 5050 1250 5050
Wire Wire Line
	1350 4950 1250 4950
NoConn ~ 3050 2850
NoConn ~ 3050 2150
NoConn ~ 1350 5050
Wire Wire Line
	1400 2550 1350 2550
$Comp
L Connector:TestPoint TP2
U 1 1 61A56E27
P 1400 2550
F 0 "TP2" V 1450 2750 50  0000 L CNN
F 1 "T_OTG" V 1450 2950 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1600 2550 50  0001 C CNN
F 3 "~" H 1600 2550 50  0001 C CNN
F 4 "y" H 1400 2550 50  0001 C CNN "Checked"
F 5 "None" H 1400 2550 50  0001 C CNN "Distributor"
F 6 "y" H 1400 2550 50  0001 C CNN "DNP"
	1    1400 2550
	0    -1   -1   0   
$EndComp
NoConn ~ 1350 7450
Wire Wire Line
	1300 7350 1350 7350
Text GLabel 1300 7350 0    50   Output ~ 0
USB_RESETn
$Comp
L Device:R_Small R113
U 1 1 5E2AEC8A
P 4250 9450
F 0 "R113" H 4191 9404 50  0000 R CNN
F 1 "10k" H 4191 9495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 9450 50  0001 C CNN
F 3 "~" H 4250 9450 50  0001 C CNN
F 4 "Yageo" H 4250 9450 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 4250 9450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4250 9450 50  0001 C CNN "Checked"
F 7 "Mouser" H 4250 9450 50  0001 C CNN "Distributor"
	1    4250 9450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR051
U 1 1 5E2F5AF5
P 4250 9350
F 0 "#PWR051" H 4250 9200 50  0001 C CNN
F 1 "+3V3" H 4265 9523 50  0000 C CNN
F 2 "" H 4250 9350 50  0001 C CNN
F 3 "" H 4250 9350 50  0001 C CNN
	1    4250 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9650 4250 9650
$Comp
L Switch:SW_DIP_x01 SW3
U 1 1 5E29784D
P 4750 9650
F 0 "SW3" H 4750 9917 50  0000 C CNN
F 1 "SW_DIP_x01" H 4750 9826 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_Omron_A6S-110x_W8.9mm_P2.54mm" H 4750 9650 50  0001 C CNN
F 3 "~" H 4750 9650 50  0001 C CNN
F 4 "Apem" H 4750 9650 50  0001 C CNN "Manufacturer"
F 5 "DM01" H 4750 9650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4750 9650 50  0001 C CNN "Checked"
F 7 "Mouser" H 4750 9650 50  0001 C CNN "Distributor"
	1    4750 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 9650 4250 9550
NoConn ~ 3050 1250
Wire Wire Line
	3400 9450 3050 9450
$Comp
L Mechanical:MountingHole H13
U 1 1 616FBC04
P 4900 3650
F 0 "H13" H 5000 3696 50  0000 L CNN
F 1 "LABEL_CPU" H 5000 3605 50  0000 L CNN
F 2 "footprints:cpu" H 4900 3650 50  0001 C CNN
F 3 "~" H 4900 3650 50  0001 C CNN
F 4 "y" H 4900 3650 50  0001 C CNN "Checked"
F 5 "None" H 4900 3650 50  0001 C CNN "Distributor"
F 6 "y" H 4900 3650 50  0001 C CNN "DNP"
	1    4900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x33 J15
U 1 1 613584E8
P 6800 2600
F 0 "J15" H 6718 775 50  0000 C CNN
F 1 "Conn_01x33" H 6718 866 50  0000 C CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-33S-0.5SH_1x33-1MP_P0.50mm_Horizontal" H 6800 2600 50  0001 C CNN
F 3 "~" H 6800 2600 50  0001 C CNN
F 4 "Hirose" H 6800 2600 50  0001 C CNN "Manufacturer"
F 5 "FH12-33S-0.5SH(55)" H 6800 2600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6800 2600 50  0001 C CNN "Checked"
F 7 "Mouser" H 6800 2600 50  0001 C CNN "Distributor"
	1    6800 2600
	-1   0    0    1   
$EndComp
NoConn ~ 7000 3700
NoConn ~ 7000 3800
NoConn ~ 7000 3900
NoConn ~ 7000 4000
NoConn ~ 7000 1200
NoConn ~ 7000 1100
NoConn ~ 7000 1000
NoConn ~ 7000 1500
NoConn ~ 7000 1400
Connection ~ 7150 1600
Wire Wire Line
	7150 1300 7150 1600
Wire Wire Line
	7000 1300 7150 1300
Connection ~ 7150 1900
Wire Wire Line
	7150 1600 7150 1900
Wire Wire Line
	7000 1600 7150 1600
Connection ~ 7150 2200
Wire Wire Line
	7150 1900 7150 2200
Wire Wire Line
	7000 1900 7150 1900
Connection ~ 7150 2500
Wire Wire Line
	7150 2200 7150 2500
Wire Wire Line
	7000 2200 7150 2200
Connection ~ 7150 2800
Wire Wire Line
	7150 2500 7150 2800
Wire Wire Line
	7000 2500 7150 2500
Connection ~ 7150 3100
Wire Wire Line
	7150 2800 7150 3100
Wire Wire Line
	7000 2800 7150 2800
Connection ~ 7150 4100
Wire Wire Line
	7150 3100 7150 4100
Wire Wire Line
	7000 3100 7150 3100
NoConn ~ 7000 3200
NoConn ~ 7000 3300
NoConn ~ 7000 3400
NoConn ~ 7000 3500
NoConn ~ 7000 3600
Connection ~ 7150 4200
Wire Wire Line
	7150 4100 7150 4200
Wire Wire Line
	7000 4100 7150 4100
Wire Wire Line
	7150 4200 7000 4200
Wire Wire Line
	7150 4300 7150 4200
$Comp
L power:GND #PWR02
U 1 1 613E21E1
P 7150 4300
F 0 "#PWR02" H 7150 4050 50  0001 C CNN
F 1 "GND" H 7155 4127 50  0000 C CNN
F 2 "" H 7150 4300 50  0001 C CNN
F 3 "" H 7150 4300 50  0001 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3000 7200 3000
Wire Wire Line
	7200 2900 7000 2900
Wire Wire Line
	7000 2700 7200 2700
Wire Wire Line
	7200 2600 7000 2600
Wire Wire Line
	7000 2400 7200 2400
Wire Wire Line
	7200 2300 7000 2300
Wire Wire Line
	7000 2100 7200 2100
Wire Wire Line
	7200 2000 7000 2000
Text GLabel 7200 2900 2    50   Output ~ 0
DSI_D3_P
Text GLabel 7200 3000 2    50   Output ~ 0
DSI_D3_N
Text GLabel 7200 2600 2    50   Output ~ 0
DSI_D2_P
Text GLabel 7200 2700 2    50   Output ~ 0
DSI_D2_N
Wire Wire Line
	7200 1800 7000 1800
Wire Wire Line
	7200 1700 7000 1700
Text GLabel 7200 1700 2    50   Output ~ 0
DSI_D0_P
NoConn ~ 1350 7550
NoConn ~ 1350 7650
NoConn ~ 1350 8150
NoConn ~ 1350 8250
NoConn ~ 1350 8350
NoConn ~ 1350 8450
NoConn ~ 1350 8550
NoConn ~ 1350 8650
NoConn ~ 1350 8750
NoConn ~ 1350 10250
NoConn ~ 1350 10150
NoConn ~ 3050 10750
NoConn ~ 3050 10650
NoConn ~ 3050 10550
NoConn ~ 3050 10450
NoConn ~ 3050 10350
NoConn ~ 3050 10250
NoConn ~ 3050 10150
NoConn ~ 3050 9950
NoConn ~ 3050 9850
NoConn ~ 1350 2450
NoConn ~ 3050 4850
NoConn ~ 3050 4950
NoConn ~ 3050 5050
NoConn ~ 3050 5150
NoConn ~ 3050 5250
NoConn ~ 3050 5350
NoConn ~ 3050 5550
NoConn ~ 3050 8850
NoConn ~ 3050 8650
NoConn ~ 3050 8550
NoConn ~ 3050 8450
NoConn ~ 3050 8250
NoConn ~ 3050 8150
NoConn ~ 3050 8050
NoConn ~ 3050 7950
NoConn ~ 3050 7850
NoConn ~ 3050 7550
NoConn ~ 3050 7350
NoConn ~ 3050 7250
NoConn ~ 1350 4250
NoConn ~ 1350 4150
NoConn ~ 1350 3950
NoConn ~ 1350 3850
NoConn ~ 1350 3650
NoConn ~ 1350 3550
NoConn ~ 1350 3350
NoConn ~ 1350 3250
NoConn ~ 1350 3050
NoConn ~ 1350 2950
Connection ~ 650  1450
Wire Wire Line
	650  1150 650  1450
Wire Wire Line
	1350 1150 650  1150
Connection ~ 650  1750
Wire Wire Line
	650  1450 650  1750
Wire Wire Line
	1350 1450 650  1450
Connection ~ 650  2050
Wire Wire Line
	650  1750 650  2050
Wire Wire Line
	1350 1750 650  1750
Connection ~ 650  2350
Wire Wire Line
	650  2050 650  2350
Wire Wire Line
	1350 2050 650  2050
Connection ~ 650  2850
Wire Wire Line
	650  2350 650  2850
Wire Wire Line
	1350 2350 650  2350
Connection ~ 650  3150
Wire Wire Line
	650  2850 650  3150
Wire Wire Line
	1350 2850 650  2850
Wire Wire Line
	650  3450 650  3750
Connection ~ 650  3450
Wire Wire Line
	1350 3450 650  3450
Connection ~ 650  3750
Wire Wire Line
	650  3150 650  3450
Wire Wire Line
	1350 3150 650  3150
Connection ~ 650  4050
Wire Wire Line
	650  3750 1350 3750
Wire Wire Line
	650  4050 650  3750
Wire Wire Line
	1350 4050 650  4050
Wire Wire Line
	650  4050 650  4350
Wire Wire Line
	1350 4350 650  4350
Connection ~ 650  5750
Wire Wire Line
	650  5550 650  5750
Wire Wire Line
	1350 5550 650  5550
Connection ~ 650  6350
Wire Wire Line
	650  5750 650  6350
Wire Wire Line
	1350 5750 650  5750
Connection ~ 650  6650
Wire Wire Line
	650  6350 1350 6350
Wire Wire Line
	650  6650 650  6350
Wire Wire Line
	1350 6650 650  6650
Connection ~ 650  6950
Wire Wire Line
	650  6650 650  6950
Wire Wire Line
	650  6950 650  7250
Wire Wire Line
	1350 6950 650  6950
Wire Wire Line
	1350 7250 650  7250
Connection ~ 650  9150
Wire Wire Line
	650  8850 650  9150
Wire Wire Line
	1350 8850 650  8850
Connection ~ 650  9450
Wire Wire Line
	650  9150 650  9450
Wire Wire Line
	1350 9150 650  9150
Connection ~ 650  9750
Wire Wire Line
	650  9450 650  9750
Wire Wire Line
	1350 9450 650  9450
Connection ~ 650  10050
Wire Wire Line
	650  9750 650  10050
Wire Wire Line
	1350 9750 650  9750
Connection ~ 650  10350
Wire Wire Line
	650  10050 1350 10050
Wire Wire Line
	650  10350 650  10050
Wire Wire Line
	650  10350 1350 10350
Wire Wire Line
	650  10900 650  10350
Connection ~ 1250 950 
Wire Wire Line
	1250 1050 1250 950 
Wire Wire Line
	1350 1050 1250 1050
Wire Wire Line
	1250 950  1250 850 
Wire Wire Line
	1350 950  1250 950 
Wire Wire Line
	1350 850  1250 850 
Connection ~ 3150 950 
Wire Wire Line
	3150 1050 3150 950 
Wire Wire Line
	3050 1050 3150 1050
Wire Wire Line
	3150 950  3150 850 
Wire Wire Line
	3050 950  3150 950 
Wire Wire Line
	3050 850  3150 850 
$Comp
L reform2-motherboard-rescue:Nitrogen8M-reform2 U1
U 1 1 60678A3C
P 2150 5650
F 0 "U1" H 2200 10717 50  0000 C CNN
F 1 "Nitrogen8M_SOM" H 2200 10626 50  0000 C CNN
F 2 "footprints:TE_1473149-4" H 1950 8850 50  0001 C CNN
F 3 "" H 1950 8850 50  0001 C CNN
F 4 "1717254-1" H 2150 5650 50  0001 C CNN "Manufacturer_No"
F 5 "TE" H 2150 5650 50  0001 C CNN "Manufacturer"
F 6 "y" H 2150 5650 50  0001 C CNN "Checked"
F 7 "Mouser" H 2150 5650 50  0001 C CNN "Distributor"
	1    2150 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 5F0CE58E
P 6000 2600
F 0 "#PWR0219" H 6000 2350 50  0001 C CNN
F 1 "GND" H 6005 2427 50  0000 C CNN
F 2 "" H 6000 2600 50  0001 C CNN
F 3 "" H 6000 2600 50  0001 C CNN
	1    6000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 950  5300 950 
Connection ~ 6000 950 
Wire Wire Line
	5300 2200 5300 2150
$Comp
L power:GND #PWR0218
U 1 1 5F0856B7
P 5300 2200
F 0 "#PWR0218" H 5300 1950 50  0001 C CNN
F 1 "GND" H 5305 2027 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
Connection ~ 5000 950 
Wire Wire Line
	4700 950  4700 1000
Wire Wire Line
	5000 950  4700 950 
Connection ~ 5300 950 
Wire Wire Line
	5000 950  5000 1000
Wire Wire Line
	5300 950  5000 950 
Wire Wire Line
	5300 950  5300 1000
$Comp
L power:+3V3 #PWR0103
U 1 1 5F0466BE
P 6000 950
F 0 "#PWR0103" H 6000 800 50  0001 C CNN
F 1 "+3V3" H 6015 1123 50  0000 C CNN
F 2 "" H 6000 950 50  0001 C CNN
F 3 "" H 6000 950 50  0001 C CNN
	1    6000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1750 4650 1750
Wire Wire Line
	5300 1950 5300 1550
Wire Wire Line
	5000 1850 4650 1850
Text GLabel 4650 1850 0    50   Input ~ 0
IMX_JTAG_TDI
Text GLabel 4650 1650 0    50   Output ~ 0
IMX_JTAG_TMS
Text GLabel 1300 5650 0    50   Output ~ 0
LPC_SCK
Text GLabel 1300 5350 0    50   Output ~ 0
LPC_MOSI
Text GLabel 1300 5450 0    50   Input ~ 0
LPC_MISO
Text GLabel 4000 2650 2    50   Output ~ 0
ETH0_LED_LINK2
Text GLabel 3100 6850 2    50   Output ~ 0
IMX_UART2_RX
Text GLabel 3100 6950 2    50   Output ~ 0
IMX_UART2_TX
Wire Wire Line
	1150 4750 1350 4750
Wire Wire Line
	3100 6650 3050 6650
$Comp
L Device:R_Small R111
U 1 1 5DC1E478
P 3200 6650
F 0 "R111" V 3300 6650 50  0000 C CNN
F 1 "0" V 3200 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3200 6650 50  0001 C CNN
F 3 "~" H 3200 6650 50  0001 C CNN
F 4 "Vishay Dale" H 3200 6650 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 3200 6650 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 3200 6650 50  0001 C CNN "Distributor"
F 7 "y" H 3200 6650 50  0001 C CNN "Checked"
	1    3200 6650
	0    1    1    0   
$EndComp
Text GLabel 3300 6650 2    50   Input ~ 0
USB_PWR
Wire Wire Line
	3200 1150 3050 1150
$Comp
L Connector:TestPoint TP8
U 1 1 5DBAB563
P 3200 1150
F 0 "TP8" V 3154 1338 50  0000 L CNN
F 1 "T_PMIC_ON_REQ" V 3245 1338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3400 1150 50  0001 C CNN
F 3 "~" H 3400 1150 50  0001 C CNN
F 4 "y" H 3200 1150 50  0001 C CNN "Checked"
F 5 "None" H 3200 1150 50  0001 C CNN "Distributor"
F 6 "y" H 3200 1150 50  0001 C CNN "DNP"
	1    3200 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D2EE257
P 650 10900
F 0 "#PWR0102" H 650 10650 50  0001 C CNN
F 1 "GND" H 655 10727 50  0000 C CNN
F 2 "" H 650 10900 50  0001 C CNN
F 3 "" H 650 10900 50  0001 C CNN
	1    650  10900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D2FFAE8
P 5700 3950
AR Path="/5D06AC46/5D2FFAE8" Ref="H?"  Part="1" 
AR Path="/5D2FFAE8" Ref="H3"  Part="1" 
F 0 "H3" H 5800 3999 50  0000 L CNN
F 1 "NGFF-Mount3" H 5800 3908 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 5700 3950 50  0001 C CNN
F 3 "~" H 5700 3950 50  0001 C CNN
F 4 "y" H 5700 3950 50  0001 C CNN "Checked"
F 5 "None" H 5700 3950 50  0001 C CNN "Distributor"
F 6 "y" H 5700 3950 50  0001 C CNN "DNP"
	1    5700 3950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D2FBEE7
P 5700 3500
AR Path="/5D06AC46/5D2FBEE7" Ref="H?"  Part="1" 
AR Path="/5D2FBEE7" Ref="H2"  Part="1" 
F 0 "H2" H 5800 3549 50  0000 L CNN
F 1 "NGFF-Mount2" H 5800 3458 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 5700 3500 50  0001 C CNN
F 3 "~" H 5700 3500 50  0001 C CNN
F 4 "y" H 5700 3500 50  0001 C CNN "Checked"
F 5 "None" H 5700 3500 50  0001 C CNN "Distributor"
F 6 "y" H 5700 3500 50  0001 C CNN "DNP"
	1    5700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2FBEDD
P 5700 3600
AR Path="/5D06AC46/5D2FBEDD" Ref="#PWR?"  Part="1" 
AR Path="/5D2FBEDD" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 5700 3350 50  0001 C CNN
F 1 "GND" H 5705 3427 50  0000 C CNN
F 2 "" H 5700 3600 50  0001 C CNN
F 3 "" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D2F00CF
P 5700 3050
AR Path="/5D06AC46/5D2F00CF" Ref="H?"  Part="1" 
AR Path="/5D2F00CF" Ref="H1"  Part="1" 
F 0 "H1" H 5800 3099 50  0000 L CNN
F 1 "NGFF-Mount1" H 5800 3008 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 5700 3050 50  0001 C CNN
F 3 "~" H 5700 3050 50  0001 C CNN
F 4 "y" H 5700 3050 50  0001 C CNN "Checked"
F 5 "None" H 5700 3050 50  0001 C CNN "Distributor"
F 6 "" H 5700 3050 50  0001 C CNN "DNP"
F 7 "Wurth" H 5700 3050 50  0001 C CNN "Manufacturer"
F 8 "9774020243R" H 5700 3050 50  0001 C CNN "Manufacturer_No"
	1    5700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D2F00D5
P 5700 3150
AR Path="/5D06AC46/5D2F00D5" Ref="#PWR?"  Part="1" 
AR Path="/5D2F00D5" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 5700 2900 50  0001 C CNN
F 1 "GND" H 5705 2977 50  0000 C CNN
F 2 "" H 5700 3150 50  0001 C CNN
F 3 "" H 5700 3150 50  0001 C CNN
	1    5700 3150
	1    0    0    -1  
$EndComp
Text GLabel 1300 5150 0    50   Input ~ 0
IMX_RESETn
Text GLabel 6800 9650 2    50   Output ~ 0
IMX_RESETn
$Comp
L Device:R_Small R119
U 1 1 5E530F1F
P 5300 1100
F 0 "R119" H 5359 1146 50  0000 L CNN
F 1 "10k" H 5359 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 1100 50  0001 C CNN
F 3 "~" H 5300 1100 50  0001 C CNN
F 4 "Yageo" H 5300 1100 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 5300 1100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5300 1100 50  0001 C CNN "Checked"
F 7 "Mouser" H 5300 1100 50  0001 C CNN "Distributor"
F 8 "y" H 5300 1100 50  0001 C CNN "DNP"
	1    5300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R120
U 1 1 5E4B7E2C
P 5300 2050
F 0 "R120" H 5359 2096 50  0000 L CNN
F 1 "100k" H 5359 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 2050 50  0001 C CNN
F 3 "~" H 5300 2050 50  0001 C CNN
F 4 "Vishay Dale" H 5300 2050 50  0001 C CNN "Manufacturer"
F 5 "CRCW0603100KJNEAC" H 5300 2050 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5300 2050 50  0001 C CNN "Checked"
F 7 "Mouser" H 5300 2050 50  0001 C CNN "Distributor"
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R118
U 1 1 5E49FD3D
P 5000 1100
F 0 "R118" H 5059 1146 50  0000 L CNN
F 1 "10k" H 5059 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 1100 50  0001 C CNN
F 3 "~" H 5000 1100 50  0001 C CNN
F 4 "Yageo" H 5000 1100 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 5000 1100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5000 1100 50  0001 C CNN "Checked"
F 7 "Mouser" H 5000 1100 50  0001 C CNN "Distributor"
F 8 "y" H 5000 1100 50  0001 C CNN "DNP"
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R117
U 1 1 5E4884F3
P 4700 1100
F 0 "R117" H 4759 1146 50  0000 L CNN
F 1 "10k" H 4759 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 1100 50  0001 C CNN
F 3 "~" H 4700 1100 50  0001 C CNN
F 4 "Yageo" H 4700 1100 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 4700 1100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4700 1100 50  0001 C CNN "Checked"
F 7 "Mouser" H 4700 1100 50  0001 C CNN "Distributor"
F 8 "y" H 4700 1100 50  0001 C CNN "DNP"
	1    4700 1100
	1    0    0    -1  
$EndComp
Text GLabel 1150 4850 0    50   Input ~ 0
IMX_JTAG_RSTn
Text GLabel 1300 4450 0    50   Input ~ 0
IMX_JTAG_TCK
Text GLabel 1200 5050 0    50   Output ~ 0
IMX_JTAG_TDO
Text GLabel 4650 1350 0    50   Output ~ 0
IMX_JTAG_RSTn
Text GLabel 4650 1550 0    50   Output ~ 0
IMX_JTAG_TCK
Text GLabel 4650 1750 0    50   Output ~ 0
IMX_JTAG_TDO
$Comp
L Device:R_Small R115
U 1 1 5DC1194C
P 6500 9450
F 0 "R115" H 6559 9496 50  0000 L CNN
F 1 "10k" H 6559 9405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 9450 50  0001 C CNN
F 3 "~" H 6500 9450 50  0001 C CNN
F 4 "Yageo" H 6500 9450 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 6500 9450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6500 9450 50  0001 C CNN "Checked"
F 7 "Mouser" H 6500 9450 50  0001 C CNN "Distributor"
	1    6500 9450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR059
U 1 1 5DC110DB
P 6500 9350
F 0 "#PWR059" H 6500 9200 50  0001 C CNN
F 1 "+3V3" H 6650 9400 50  0000 C CNN
F 2 "" H 6500 9350 50  0001 C CNN
F 3 "" H 6500 9350 50  0001 C CNN
	1    6500 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 9650 6000 9650
$Comp
L power:GND #PWR054
U 1 1 5DBFED7E
P 5950 9650
F 0 "#PWR054" H 5950 9400 50  0001 C CNN
F 1 "GND" V 5955 9522 50  0000 R CNN
F 2 "" H 5950 9650 50  0001 C CNN
F 3 "" H 5950 9650 50  0001 C CNN
	1    5950 9650
	0    1    1    0   
$EndComp
Text GLabel 1300 5850 0    50   Output ~ 0
DAC_SCL
Text GLabel 1300 5950 0    50   BiDi ~ 0
DAC_SDA
Wire Wire Line
	6250 8650 6150 8650
Wire Wire Line
	6250 8750 6250 8650
$Comp
L power:GND #PWR061
U 1 1 5D81C2CD
P 6250 8750
F 0 "#PWR061" H 6250 8500 50  0001 C CNN
F 1 "GND" H 6255 8577 50  0000 C CNN
F 2 "" H 6250 8750 50  0001 C CNN
F 3 "" H 6250 8750 50  0001 C CNN
	1    6250 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 8550 6150 8550
Text GLabel 6400 8550 2    50   Output ~ 0
IMX_UART2_RX
Wire Wire Line
	6400 8450 6150 8450
Text GLabel 6400 8450 2    50   Input ~ 0
IMX_UART2_TX
$Comp
L Connector:Conn_01x03_Male J20
U 1 1 5D81C2BF
P 5950 8550
F 0 "J20" H 6000 8800 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6058 8740 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5950 8550 50  0001 C CNN
F 3 "~" H 5950 8550 50  0001 C CNN
F 4 "Wurth" H 5950 8550 50  0001 C CNN "Manufacturer"
F 5 "61300311121" H 5950 8550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5950 8550 50  0001 C CNN "Checked"
F 7 "Mouser" H 5950 8550 50  0001 C CNN "Distributor"
	1    5950 8550
	1    0    0    -1  
$EndComp
Text GLabel 3100 7050 2    50   Input ~ 0
IMX_UART1_RX
Text GLabel 3100 7150 2    50   Output ~ 0
IMX_UART1_TX
Wire Wire Line
	4700 8650 4600 8650
Wire Wire Line
	4850 8550 4600 8550
Text GLabel 4850 8550 2    50   Output ~ 0
IMX_UART1_RX
Wire Wire Line
	4850 8450 4600 8450
Text GLabel 4850 8450 2    50   Input ~ 0
IMX_UART1_TX
$Comp
L Connector:Conn_01x03_Male J18
U 1 1 5D742FCD
P 4400 8550
F 0 "J18" H 4450 8800 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4508 8740 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 4400 8550 50  0001 C CNN
F 3 "~" H 4400 8550 50  0001 C CNN
F 4 "Wurth" H 4400 8550 50  0001 C CNN "Manufacturer"
F 5 "61300311121" H 4400 8550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4400 8550 50  0001 C CNN "Checked"
F 7 "Mouser" H 4400 8550 50  0001 C CNN "Distributor"
	1    4400 8550
	1    0    0    -1  
$EndComp
Text GLabel 1300 10650 0    50   BiDi ~ 0
HDMI_CEC
Text GLabel 1300 10750 0    50   Output ~ 0
HDMI_HPD
Text GLabel 1300 10450 0    50   BiDi ~ 0
HDMI_SDA
Text GLabel 1300 10550 0    50   Output ~ 0
HDMI_SCL
Text GLabel 3100 9550 2    50   Output ~ 0
DAC_MCLK
Text GLabel 3100 9150 2    50   Output ~ 0
DAC_RXFS
Text GLabel 3100 9250 2    50   Output ~ 0
DAC_BCLK
Text GLabel 3100 9050 2    50   Input ~ 0
DAC_DIN
Text GLabel 3100 9650 2    50   Output ~ 0
DAC_DOUT
Text GLabel 3100 9350 2    50   Output ~ 0
DAC_TXFS
Text GLabel 3100 8950 2    50   Output ~ 0
BACKLIGHT_PWM
Text GLabel 1300 6050 0    50   Output ~ 0
BACKLIGHT_EN
$Comp
L power:GND #PWR0186
U 1 1 5DBF561F
P 6800 4850
F 0 "#PWR0186" H 6800 4600 50  0001 C CNN
F 1 "GND" H 6805 4677 50  0000 C CNN
F 2 "" H 6800 4850 50  0001 C CNN
F 3 "" H 6800 4850 50  0001 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 5DBF5615
P 6800 4750
F 0 "H8" H 6900 4799 50  0000 L CNN
F 1 "MountingHole_Pad" H 6900 4708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 6800 4750 50  0001 C CNN
F 3 "~" H 6800 4750 50  0001 C CNN
F 4 "y" H 6800 4750 50  0001 C CNN "Checked"
F 5 "None" H 6800 4750 50  0001 C CNN "Distributor"
F 6 "y" H 6800 4750 50  0001 C CNN "DNP"
	1    6800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 5DBF560B
P 5900 4850
F 0 "#PWR0185" H 5900 4600 50  0001 C CNN
F 1 "GND" H 5905 4677 50  0000 C CNN
F 2 "" H 5900 4850 50  0001 C CNN
F 3 "" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 5DBF5601
P 5900 4750
F 0 "H7" H 6000 4799 50  0000 L CNN
F 1 "MountingHole_Pad" H 6000 4708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 5900 4750 50  0001 C CNN
F 3 "~" H 5900 4750 50  0001 C CNN
F 4 "y" H 5900 4750 50  0001 C CNN "Checked"
F 5 "None" H 5900 4750 50  0001 C CNN "Distributor"
F 6 "y" H 5900 4750 50  0001 C CNN "DNP"
	1    5900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0184
U 1 1 5DBE65CB
P 5000 4850
F 0 "#PWR0184" H 5000 4600 50  0001 C CNN
F 1 "GND" H 5005 4677 50  0000 C CNN
F 2 "" H 5000 4850 50  0001 C CNN
F 3 "" H 5000 4850 50  0001 C CNN
	1    5000 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5DBE65C1
P 5000 4750
F 0 "H6" H 5100 4799 50  0000 L CNN
F 1 "MountingHole_Pad" H 5100 4708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 5000 4750 50  0001 C CNN
F 3 "~" H 5000 4750 50  0001 C CNN
F 4 "y" H 5000 4750 50  0001 C CNN "Checked"
F 5 "None" H 5000 4750 50  0001 C CNN "Distributor"
F 6 "y" H 5000 4750 50  0001 C CNN "DNP"
	1    5000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0183
U 1 1 5DBC9030
P 4100 4850
F 0 "#PWR0183" H 4100 4600 50  0001 C CNN
F 1 "GND" H 4105 4677 50  0000 C CNN
F 2 "" H 4100 4850 50  0001 C CNN
F 3 "" H 4100 4850 50  0001 C CNN
	1    4100 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5DBC8BC3
P 4100 4750
F 0 "H5" H 4200 4799 50  0000 L CNN
F 1 "MountingHole_Pad" H 4200 4708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 4100 4750 50  0001 C CNN
F 3 "~" H 4100 4750 50  0001 C CNN
F 4 "y" H 4100 4750 50  0001 C CNN "Checked"
F 5 "None" H 4100 4750 50  0001 C CNN "Distributor"
F 6 "y" H 4100 4750 50  0001 C CNN "DNP"
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 611177F8
P 4900 3400
F 0 "H12" H 5000 3446 50  0000 L CNN
F 1 "LABEL_MPCIE2" H 5000 3355 50  0000 L CNN
F 2 "footprints:nvme" H 4900 3400 50  0001 C CNN
F 3 "~" H 4900 3400 50  0001 C CNN
F 4 "y" H 4900 3400 50  0001 C CNN "Checked"
F 5 "None" H 4900 3400 50  0001 C CNN "Distributor"
F 6 "y" H 4900 3400 50  0001 C CNN "DNP"
	1    4900 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 611164C9
P 4900 3150
F 0 "H11" H 5000 3196 50  0000 L CNN
F 1 "LABEL_MPCIE1" H 5000 3105 50  0000 L CNN
F 2 "footprints:mpcie" H 4900 3150 50  0001 C CNN
F 3 "~" H 4900 3150 50  0001 C CNN
F 4 "y" H 4900 3150 50  0001 C CNN "Checked"
F 5 "None" H 4900 3150 50  0001 C CNN "Distributor"
F 6 "y" H 4900 3150 50  0001 C CNN "DNP"
	1    4900 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 61115EAF
P 4900 2900
F 0 "H10" H 5000 2946 50  0000 L CNN
F 1 "LOGO_REFORM" H 5000 2855 50  0000 L CNN
F 2 "reform2-motherboard:mntreform" H 4900 2900 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
F 4 "y" H 4900 2900 50  0001 C CNN "Checked"
F 5 "None" H 4900 2900 50  0001 C CNN "Distributor"
F 6 "y" H 4900 2900 50  0001 C CNN "DNP"
	1    4900 2900
	1    0    0    -1  
$EndComp
Text GLabel 1350 6750 0    50   Input ~ 0
USB2_RX_P
Text GLabel 1350 6850 0    50   Input ~ 0
USB2_RX_N
Text GLabel 1300 7150 0    50   Output ~ 0
USB2_DP
Text GLabel 1300 7050 0    50   Output ~ 0
USB2_DN
Text GLabel 1350 6450 0    50   Output ~ 0
USB2_TX_P
Text GLabel 1350 6550 0    50   Output ~ 0
USB2_TX_N
Text GLabel 1300 6250 0    50   BiDi ~ 0
EDP_SDA
Text GLabel 1300 6150 0    50   Output ~ 0
EDP_SCL
Text GLabel 3100 3750 2    50   Output ~ 0
PCIE1_CLK_N
Text GLabel 3100 3650 2    50   Output ~ 0
PCIE1_CLK_P
Text GLabel 3100 4050 2    50   Input ~ 0
PCIE2_CLK_N
Text GLabel 3100 3950 2    50   Input ~ 0
PCIE2_CLK_P
Text GLabel 3100 4550 2    50   Output ~ 0
PCIE2_RX_P
Text GLabel 3100 4250 2    50   Output ~ 0
PCIE2_TX_P
Text GLabel 3100 4650 2    50   Output ~ 0
PCIE2_RX_N
Text GLabel 3100 4350 2    50   Output ~ 0
PCIE2_TX_N
Text GLabel 3100 3350 2    50   Output ~ 0
PCIE1_RX_P
Text GLabel 3100 3050 2    50   Output ~ 0
PCIE1_TX_P
Text GLabel 3100 3450 2    50   Output ~ 0
PCIE1_RX_N
Text GLabel 3100 3150 2    50   Output ~ 0
PCIE1_TX_N
Text GLabel 1300 2250 0    60   Output ~ 0
ETH0_A+
Text GLabel 1300 2150 0    60   Output ~ 0
ETH0_A-
Text GLabel 1300 1950 0    60   Output ~ 0
ETH0_B+
Text GLabel 1300 1850 0    60   Output ~ 0
ETH0_B-
Text GLabel 1300 1650 0    60   Output ~ 0
ETH0_C+
Text GLabel 1300 1550 0    60   Output ~ 0
ETH0_C-
Text GLabel 1300 1350 0    60   Output ~ 0
ETH0_D+
Text GLabel 1300 1250 0    60   Output ~ 0
ETH0_D-
Text GLabel 1150 4750 0    50   Output ~ 0
ETH0_LED_RX
Text GLabel 1200 4950 0    50   Output ~ 0
ETH0_LED_LINK1
$Sheet
S 5350 6650 500  150 
U 5D1F6C04
F0 "Reform 2 Audio" 50
F1 "reform2-audio.sch" 50
$EndSheet
Text GLabel 3100 6450 2    50   Input ~ 0
USB1_RX_P
Text GLabel 3100 6350 2    50   Input ~ 0
USB1_RX_N
Text GLabel 3100 5850 2    50   Output ~ 0
USB1_DP
Text GLabel 3100 5750 2    50   Output ~ 0
USB1_DN
Text GLabel 3100 6150 2    50   Output ~ 0
USB1_TX_P
Text GLabel 3100 6050 2    50   Output ~ 0
USB1_TX_N
$Sheet
S 4350 6650 500  150 
U 5D0D8363
F0 "Reform 2 HDMI" 50
F1 "reform2-hdmi.sch" 50
$EndSheet
$Sheet
S 5350 6250 500  150 
U 5D0CA3EB
F0 "Reform 2 SD Card" 50
F1 "reform2-sd.sch" 50
$EndSheet
$Sheet
S 5350 5850 500  150 
U 5D06AC46
F0 "Reform 2 PCIe" 50
F1 "reform2-pcie.sch" 50
$EndSheet
$Sheet
S 6400 6250 500  150 
U 5D06A7B6
F0 "Reform 2 Display" 50
F1 "reform2-display.sch" 50
$EndSheet
$Sheet
S 6400 5850 500  150 
U 5D06A32E
F0 "Reform 2 Ethernet" 50
F1 "reform2-eth.sch" 50
$EndSheet
$Sheet
S 4350 6250 500  150 
U 5D06A2FD
F0 "Reform 2 USB" 50
F1 "reform2-usb.sch" 50
$EndSheet
$Sheet
S 4350 5850 500  150 
U 5CC81028
F0 "Reform 2 Power" 50
F1 "reform2-power.sch" 50
$EndSheet
Text GLabel 3100 2050 2    50   Input ~ 0
SD2_CD
Text GLabel 3100 1850 2    50   Output ~ 0
SD2_CLK
Text GLabel 3100 1750 2    50   Output ~ 0
SD2_CMD
Text GLabel 3100 1650 2    50   BiDi ~ 0
SD2_DATA3
Text GLabel 3100 1550 2    50   BiDi ~ 0
SD2_DATA2
Text GLabel 3100 1450 2    50   BiDi ~ 0
SD2_DATA1
Text GLabel 3100 1350 2    50   BiDi ~ 0
SD2_DATA0
Text GLabel 1300 9550 0    50   Output ~ 0
HDMI_D1-
Text GLabel 1300 9650 0    50   Output ~ 0
HDMI_D1+
Text GLabel 1300 9850 0    50   Output ~ 0
HDMI_D2-
Text GLabel 1300 9950 0    50   Output ~ 0
HDMI_D2+
Text GLabel 1300 8950 0    50   Output ~ 0
HDMI_CLK-
Text GLabel 1300 9050 0    50   Output ~ 0
HDMI_CLK+
Text GLabel 1300 9250 0    50   Output ~ 0
HDMI_D0-
Text GLabel 1300 9350 0    50   Output ~ 0
HDMI_D0+
Text Notes 1900 11000 0    50   ~ 0
TE 1717254-1
Text Notes 1850 11100 0    50   ~ 0
or TE 1473005-1
$Comp
L power:GND #PWR0214
U 1 1 5D3B2B49
P 4100 5300
F 0 "#PWR0214" H 4100 5050 50  0001 C CNN
F 1 "GND" H 4105 5127 50  0000 C CNN
F 2 "" H 4100 5300 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H22
U 1 1 5D3B2B53
P 4100 5200
F 0 "H22" H 4200 5249 50  0000 L CNN
F 1 "MountingHole_Pad" H 4200 5158 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 4100 5200 50  0001 C CNN
F 3 "~" H 4100 5200 50  0001 C CNN
F 4 "Wurth" H 4100 5200 50  0001 C CNN "Manufacturer"
F 5 "9774025243R" H 4100 5200 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 5200 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 5200 50  0001 C CNN "Distributor"
	1    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0223
U 1 1 5D3BCEF3
P 5000 5350
F 0 "#PWR0223" H 5000 5100 50  0001 C CNN
F 1 "GND" H 5005 5177 50  0000 C CNN
F 2 "" H 5000 5350 50  0001 C CNN
F 3 "" H 5000 5350 50  0001 C CNN
	1    5000 5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H24
U 1 1 5D3BCEFD
P 5000 5250
F 0 "H24" H 5100 5299 50  0000 L CNN
F 1 "MountingHole_Pad" H 5100 5208 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 5000 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
F 4 "Wurth" H 5000 5250 50  0001 C CNN "Manufacturer"
F 5 "9774025243R" H 5000 5250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5000 5250 50  0001 C CNN "Checked"
F 7 "Mouser" H 5000 5250 50  0001 C CNN "Distributor"
	1    5000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0224
U 1 1 5D3BCF07
P 5900 5350
F 0 "#PWR0224" H 5900 5100 50  0001 C CNN
F 1 "GND" H 5905 5177 50  0000 C CNN
F 2 "" H 5900 5350 50  0001 C CNN
F 3 "" H 5900 5350 50  0001 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H25
U 1 1 5D3BCF11
P 5900 5250
F 0 "H25" H 6000 5299 50  0000 L CNN
F 1 "MountingHole_Pad" H 6000 5208 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 5900 5250 50  0001 C CNN
F 3 "~" H 5900 5250 50  0001 C CNN
F 4 "Wurth" H 5900 5250 50  0001 C CNN "Manufacturer"
F 5 "9774025243R" H 5900 5250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5900 5250 50  0001 C CNN "Checked"
F 7 "Mouser" H 5900 5250 50  0001 C CNN "Distributor"
	1    5900 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5D3D2015
P 6800 5350
F 0 "#PWR0226" H 6800 5100 50  0001 C CNN
F 1 "GND" H 6805 5177 50  0000 C CNN
F 2 "" H 6800 5350 50  0001 C CNN
F 3 "" H 6800 5350 50  0001 C CNN
	1    6800 5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H27
U 1 1 5D3D201F
P 6800 5250
F 0 "H27" H 6900 5299 50  0000 L CNN
F 1 "MountingHole_Pad" H 6900 5208 50  0000 L CNN
F 2 "footprints:WA-SMSI-M2" H 6800 5250 50  0001 C CNN
F 3 "~" H 6800 5250 50  0001 C CNN
F 4 "Wurth" H 6800 5250 50  0001 C CNN "Manufacturer"
F 5 "9774025243R" H 6800 5250 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6800 5250 50  0001 C CNN "Checked"
F 7 "Mouser" H 6800 5250 50  0001 C CNN "Distributor"
	1    6800 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5D40C483
P 850 7950
F 0 "TP10" H 600 8150 50  0000 L CNN
F 1 "T_M4_NMI" H 400 8050 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1050 7950 50  0001 C CNN
F 3 "~" H 1050 7950 50  0001 C CNN
F 4 "y" H 850 7950 50  0001 C CNN "Checked"
F 5 "None" H 850 7950 50  0001 C CNN "Distributor"
F 6 "y" H 850 7950 50  0001 C CNN "DNP"
	1    850  7950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 7950 850  7950
Wire Wire Line
	3050 8950 3100 8950
Wire Wire Line
	1350 8050 1300 8050
Text GLabel 1300 8050 0    50   Input ~ 0
IMX_WAKE
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J19
U 1 1 5ECAAFCE
P 6000 1650
F 0 "J19" H 5750 2350 50  0000 R CNN
F 1 "JTAG" H 5800 2250 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 6000 1650 50  0001 C CNN
F 3 "~" H 6000 1650 50  0001 C CNN
F 4 "Amphenol FCI" H 6000 1650 50  0001 C CNN "Manufacturer"
F 5 "20021111-00010T4LF" H 6000 1650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6000 1650 50  0001 C CNN "Checked"
F 7 "Mouser" H 6000 1650 50  0001 C CNN "Distributor"
	1    6000 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5EB50931
P 1100 1050
F 0 "#PWR0104" H 1100 900 50  0001 C CNN
F 1 "+5V" H 1115 1223 50  0000 C CNN
F 2 "" H 1100 1050 50  0001 C CNN
F 3 "" H 1100 1050 50  0001 C CNN
	1    1100 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0242
U 1 1 5EB50E6D
P 3300 1050
F 0 "#PWR0242" H 3300 900 50  0001 C CNN
F 1 "+5V" H 3315 1223 50  0000 C CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5DF11BD6
P 3400 9450
F 0 "TP12" V 3354 9638 50  0000 L CNN
F 1 "SAI2_RXC" V 3445 9638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3600 9450 50  0001 C CNN
F 3 "~" H 3600 9450 50  0001 C CNN
F 4 "y" H 3400 9450 50  0001 C CNN "Checked"
F 5 "None" H 3400 9450 50  0001 C CNN "Distributor"
F 6 "y" H 3400 9450 50  0001 C CNN "DNP"
	1    3400 9450
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 8750 4700 8650
$Comp
L power:GND #PWR0225
U 1 1 5DC7338A
P 4700 8750
F 0 "#PWR0225" H 4700 8500 50  0001 C CNN
F 1 "GND" H 4705 8577 50  0000 C CNN
F 2 "" H 4700 8750 50  0001 C CNN
F 3 "" H 4700 8750 50  0001 C CNN
	1    4700 8750
	1    0    0    -1  
$EndComp
Text Notes 4650 8300 0    50   ~ 0
Boot UART (SER1)
Text Notes 6200 8300 0    50   ~ 0
AUX UART (SER2)
Text GLabel 3250 1950 2    50   Output ~ 0
PCIE2_RESETn
Wire Wire Line
	3200 8350 3050 8350
Text GLabel 3200 7450 2    50   Input ~ 0
BOOTCFG_10
Wire Wire Line
	3200 7450 3050 7450
Wire Wire Line
	3200 7650 3050 7650
Text GLabel 3200 7750 2    50   Input ~ 0
BOOTCFG_13
Wire Wire Line
	3200 7750 3050 7750
Text GLabel 3200 7650 2    50   Input ~ 0
BOOTCFG_12
Text GLabel 5550 7700 2    50   Output ~ 0
BOOTCFG_12
Text GLabel 5550 7600 2    50   Output ~ 0
BOOTCFG_13
$Comp
L Device:R_Small R169
U 1 1 5E2C5325
P 4850 7500
F 0 "R169" V 4750 7500 50  0000 C CNN
F 1 "1.5k" V 4850 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4850 7500 50  0001 C CNN
F 3 "~" H 4850 7500 50  0001 C CNN
F 4 "Yageo" H 4850 7500 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 4850 7500 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4850 7500 50  0001 C CNN "Checked"
F 7 "Mouser" H 4850 7500 50  0001 C CNN "Distributor"
	1    4850 7500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R170
U 1 1 5E2D1326
P 4600 7600
F 0 "R170" V 4400 7600 50  0000 C CNN
F 1 "1.5k" V 4600 7600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 7600 50  0001 C CNN
F 3 "~" H 4600 7600 50  0001 C CNN
F 4 "Yageo" H 4600 7600 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 4600 7600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4600 7600 50  0001 C CNN "Checked"
F 7 "Mouser" H 4600 7600 50  0001 C CNN "Distributor"
	1    4600 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 7600 4700 7600
$Comp
L power:+3V3 #PWR03
U 1 1 5E2F4B9C
P 4400 7400
F 0 "#PWR03" H 4400 7250 50  0001 C CNN
F 1 "+3V3" H 4415 7573 50  0000 C CNN
F 2 "" H 4400 7400 50  0001 C CNN
F 3 "" H 4400 7400 50  0001 C CNN
	1    4400 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7400 4400 7500
Wire Wire Line
	4400 7500 4750 7500
Wire Wire Line
	4400 7600 4400 7500
Connection ~ 4400 7500
Text Notes 6150 7650 0    50   ~ 0
01: SD
Text Notes 6150 7750 0    50   ~ 0
10: eMMC
Text GLabel 5550 7800 2    50   Output ~ 0
BOOTCFG_10
$Comp
L Device:R_Small R171
U 1 1 5E31432E
P 4600 7700
F 0 "R171" V 4800 7700 50  0000 C CNN
F 1 "1.5k" V 4600 7700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 7700 50  0001 C CNN
F 3 "~" H 4600 7700 50  0001 C CNN
F 4 "Yageo" H 4600 7700 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 4600 7700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4600 7700 50  0001 C CNN "Checked"
F 7 "Mouser" H 4600 7700 50  0001 C CNN "Distributor"
	1    4600 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 7700 4700 7700
Text Notes 6150 7850 0    50   ~ 0
0: eSDHC1  1: eSDHC2
Text GLabel 5550 7500 2    50   Output ~ 0
BOOTCFG_4
Text Notes 6150 7550 0    50   ~ 0
0: 1-bit 1: 4-bit
$Comp
L Switch:SW_DIP_x04 SW5
U 1 1 5E3779C3
P 5250 7700
F 0 "SW5" H 5250 8167 50  0000 C CNN
F 1 "SW_DIP_x04" H 5250 8076 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx04_Slide_Copal_CHS-04B_W7.62mm_P1.27mm" H 5250 7700 50  0001 C CNN
F 3 "" H 5250 7700 50  0001 C CNN
F 4 "Diptronics" H 5250 7700 50  0001 C CNN "Manufacturer"
F 5 "DHA-04TQ" H 5250 7700 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 5250 7700 50  0001 C CNN "Checked"
F 7 "Mouser" H 5250 7700 50  0001 C CNN "Distributor"
	1    5250 7700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R168
U 1 1 5E437433
P 4850 7800
F 0 "R168" V 4750 7800 50  0000 C CNN
F 1 "1.5k" V 4850 7800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4850 7800 50  0001 C CNN
F 3 "~" H 4850 7800 50  0001 C CNN
F 4 "Yageo" H 4850 7800 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-071K5L" H 4850 7800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4850 7800 50  0001 C CNN "Checked"
F 7 "Mouser" H 4850 7800 50  0001 C CNN "Distributor"
	1    4850 7800
	0    -1   -1   0   
$EndComp
Connection ~ 4400 7600
Wire Wire Line
	4400 7600 4500 7600
Wire Wire Line
	4400 7700 4500 7700
Connection ~ 4400 7700
Wire Wire Line
	4400 7700 4400 7600
Wire Wire Line
	4750 7800 4400 7800
Wire Notes Line
	6100 7750 6850 7750
Wire Notes Line
	6100 7850 6850 7850
Wire Wire Line
	4400 7700 4400 7800
Text GLabel 7200 2400 2    50   Output ~ 0
DSI_CLK_N
Text GLabel 7200 2300 2    50   Output ~ 0
DSI_CLK_P
Text GLabel 7200 2100 2    50   Output ~ 0
DSI_D1_N
Text GLabel 7200 2000 2    50   Output ~ 0
DSI_D1_P
Text GLabel 7200 1800 2    50   Output ~ 0
DSI_D0_N
Text Notes 3100 7400 0    50   ~ 0
BOOTCFG_9
Text Notes 3100 7600 0    50   ~ 0
BOOTCFG_11
Text Notes 3100 7900 0    50   ~ 0
BOOTCFG_14
Text Notes 3100 8000 0    50   ~ 0
BOOTCFG_15
Text Notes 3100 8100 0    50   ~ 0
BOOTCFG_1
Text Notes 3100 8700 0    50   ~ 0
BOOTCFG_7
Wire Notes Line
	3150 8150 3150 8600
Text GLabel 3200 8350 2    50   Input ~ 0
BOOTCFG_4
Text Notes 3100 10100 0    50   ~ 0
BOOTCFG_0
Text Notes 3100 10200 0    50   ~ 0
BOOTCFG_8
Text GLabel 1300 7850 0    50   Input ~ 0
IMX_RTC_IRQ
Wire Wire Line
	1350 7850 1300 7850
Wire Wire Line
	6400 9650 6500 9650
Wire Wire Line
	6500 9550 6500 9650
Connection ~ 6500 9650
Wire Wire Line
	6500 9650 6800 9650
Wire Wire Line
	3100 9550 3050 9550
Wire Wire Line
	3050 9650 3100 9650
Wire Wire Line
	3100 9050 3050 9050
Wire Wire Line
	3050 9150 3100 9150
Wire Wire Line
	3100 9250 3050 9250
Wire Wire Line
	3050 9350 3100 9350
$Comp
L Connector:TestPoint TP1
U 1 1 5F7E2E35
P 3400 9750
F 0 "TP1" V 3354 9938 50  0000 L CNN
F 1 "IMX_PWM4" V 3445 9938 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3600 9750 50  0001 C CNN
F 3 "~" H 3600 9750 50  0001 C CNN
F 4 "y" H 3400 9750 50  0001 C CNN "Checked"
F 5 "None" H 3400 9750 50  0001 C CNN "Distributor"
F 6 "y" H 3400 9750 50  0001 C CNN "DNP"
	1    3400 9750
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 5950 1350 5950
Wire Wire Line
	1300 5850 1350 5850
Wire Wire Line
	1350 6250 1300 6250
Wire Wire Line
	1300 6150 1350 6150
NoConn ~ 3050 8750
NoConn ~ 3050 10050
$Comp
L Mechanical:MountingHole H9
U 1 1 5EC23958
P 4900 2650
F 0 "H9" H 5000 2696 50  0000 L CNN
F 1 "OSHWA_DE17" H 5000 2605 50  0000 L CNN
F 2 "footprints:oshwa-de17" H 4900 2650 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
F 4 "y" H 4900 2650 50  0001 C CNN "Checked"
F 5 "None" H 4900 2650 50  0001 C CNN "Distributor"
F 6 "y" H 4900 2650 50  0001 C CNN "DNP"
	1    4900 2650
	1    0    0    -1  
$EndComp
NoConn ~ 1350 2750
Wire Wire Line
	3050 2650 3100 2650
Wire Wire Line
	3050 2750 3100 2750
$Comp
L Mechanical:MountingHole H14
U 1 1 64382D78
P 4900 3900
F 0 "H14" H 5000 3946 50  0000 L CNN
F 1 "BADGE" H 5000 3855 50  0000 L CNN
F 2 "footprints:reform2-motherboard-badge" H 4900 3900 50  0001 C CNN
F 3 "~" H 4900 3900 50  0001 C CNN
F 4 "y" H 4900 3900 50  0001 C CNN "Checked"
F 5 "None" H 4900 3900 50  0001 C CNN "Distributor"
F 6 "y" H 4900 3900 50  0001 C CNN "DNP"
	1    4900 3900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H15
U 1 1 64785954
P 4900 4150
F 0 "H15" H 5000 4196 50  0000 L CNN
F 1 "NOTOUCH" H 5000 4105 50  0000 L CNN
F 2 "Symbol:ESD-Logo_8.9x8mm_SilkScreen" H 4900 4150 50  0001 C CNN
F 3 "~" H 4900 4150 50  0001 C CNN
F 4 "y" H 4900 4150 50  0001 C CNN "Checked"
F 5 "None" H 4900 4150 50  0001 C CNN "Distributor"
F 6 "y" H 4900 4150 50  0001 C CNN "DNP"
	1    4900 4150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DBC8BEC
P 6200 9650
AR Path="/5CC81028/5DBC8BEC" Ref="SW?"  Part="1" 
AR Path="/5DBC8BEC" Ref="SW6"  Part="1" 
F 0 "SW6" H 6200 9935 50  0000 C CNN
F 1 "SW_Push" H 6200 9844 50  0000 C CNN
F 2 "footprints:UK-B0206-G3.8-250-JZ" H 6200 9850 50  0001 C CNN
F 3 "~" H 6200 9850 50  0001 C CNN
F 4 "USAKRO" H 6200 9650 50  0001 C CNN "Manufacturer"
F 5 "UK-B0206-G3.8-250-JZ" H 6200 9650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6200 9650 50  0001 C CNN "Checked"
F 7 "Mouser" H 6200 9650 50  0001 C CNN "Distributor"
	1    6200 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4700 1650
Wire Wire Line
	4650 1350 5300 1350
Text Notes 4850 900  0    50   ~ 0
NOSTUFF
Wire Wire Line
	4700 1650 4700 1200
Connection ~ 4700 1650
Wire Wire Line
	4700 1650 5500 1650
Wire Wire Line
	5000 1200 5000 1850
Wire Wire Line
	5000 1850 5500 1850
Connection ~ 5000 1850
Connection ~ 5300 1550
Wire Wire Line
	5300 1550 5500 1550
Wire Wire Line
	4650 1550 5300 1550
Wire Wire Line
	5300 1200 5300 1350
Connection ~ 5300 1350
Wire Wire Line
	5300 1350 5500 1350
Wire Wire Line
	6000 950  6000 1050
Wire Wire Line
	6000 2350 6100 2350
Wire Wire Line
	6100 2350 6100 2250
Wire Wire Line
	6000 2250 6000 2350
Connection ~ 6000 2350
Wire Wire Line
	6000 2350 6000 2600
$Comp
L power:GND #PWR?
U 1 1 6580022E
P 650 7250
F 0 "#PWR?" H 650 7000 50  0001 C CNN
F 1 "GND" H 655 7077 50  0000 C CNN
F 2 "" H 650 7250 50  0001 C CNN
F 3 "" H 650 7250 50  0001 C CNN
	1    650  7250
	1    0    0    -1  
$EndComp
Connection ~ 650  7250
Wire Wire Line
	1350 7050 1300 7050
Wire Wire Line
	1300 7150 1350 7150
$Comp
L power:GND #PWR?
U 1 1 65850486
P 650 4350
F 0 "#PWR?" H 650 4100 50  0001 C CNN
F 1 "GND" H 655 4177 50  0000 C CNN
F 2 "" H 650 4350 50  0001 C CNN
F 3 "" H 650 4350 50  0001 C CNN
	1    650  4350
	1    0    0    -1  
$EndComp
Connection ~ 650  4350
Wire Wire Line
	3300 1050 3150 1050
Wire Wire Line
	1250 1050 1100 1050
Connection ~ 3150 1050
Connection ~ 1250 1050
Text GLabel 3400 2250 2    50   Output ~ 0
LPC_UART2_RX
Text GLabel 3400 2350 2    50   Output ~ 0
LPC_UART2_TX
$Comp
L Device:R_Small R154
U 1 1 61C521BA
P 3250 2250
F 0 "R154" V 3150 2250 50  0000 C CNN
F 1 "0" V 3250 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3250 2250 50  0001 C CNN
F 3 "~" H 3250 2250 50  0001 C CNN
F 4 "Vishay Dale" H 3250 2250 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 3250 2250 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 3250 2250 50  0001 C CNN "Distributor"
F 7 "y" H 3250 2250 50  0001 C CNN "Checked"
	1    3250 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R155
U 1 1 61C5240B
P 3250 2350
F 0 "R155" V 3150 2350 50  0000 C CNN
F 1 "0" V 3250 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3250 2350 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
F 4 "Vishay Dale" H 3250 2350 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 3250 2350 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 3250 2350 50  0001 C CNN "Distributor"
F 7 "y" H 3250 2350 50  0001 C CNN "Checked"
	1    3250 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2350 3050 2350
Wire Wire Line
	3050 2250 3150 2250
Wire Wire Line
	3350 2250 3400 2250
Wire Wire Line
	3350 2350 3400 2350
Wire Wire Line
	3100 1350 3050 1350
Wire Wire Line
	3050 1450 3100 1450
Wire Wire Line
	3100 1550 3050 1550
Wire Wire Line
	3050 1650 3100 1650
Wire Wire Line
	3100 1750 3050 1750
Wire Wire Line
	3050 1850 3100 1850
Wire Wire Line
	3100 2050 3050 2050
Wire Wire Line
	3050 1950 3250 1950
Text GLabel 1300 7750 0    50   BiDi ~ 0
IMX_FBOOT
Wire Wire Line
	1300 7750 1350 7750
Text GLabel 5050 9650 2    50   BiDi ~ 0
IMX_FBOOT
Text GLabel 1300 4650 0    50   Input ~ 0
IMX_JTAG_TMS
Wire Wire Line
	1300 6050 1350 6050
Wire Wire Line
	1300 5650 1350 5650
Wire Wire Line
	1300 5150 1350 5150
Wire Wire Line
	1350 5250 1300 5250
Wire Wire Line
	1300 5350 1350 5350
Wire Wire Line
	1300 5450 1350 5450
Text GLabel 4000 2800 2    50   Input ~ 0
IMX_JTAG_RSTn
Wire Wire Line
	4000 2800 3950 2800
Wire Wire Line
	3950 2800 3950 2650
Wire Wire Line
	3950 2650 4000 2650
Wire Wire Line
	1150 4850 1350 4850
Wire Wire Line
	3050 9750 3400 9750
Text Notes 4450 9250 0    50   ~ 0
User defined switch (XSW)
Wire Wire Line
	3050 6850 3100 6850
Wire Wire Line
	3100 6950 3050 6950
Wire Wire Line
	3050 7050 3100 7050
Wire Wire Line
	3100 7150 3050 7150
Wire Wire Line
	3100 6350 3050 6350
Wire Wire Line
	3050 6450 3100 6450
Wire Wire Line
	3100 6150 3050 6150
Wire Wire Line
	3050 6050 3100 6050
Wire Wire Line
	3050 5750 3100 5750
Wire Wire Line
	3100 5850 3050 5850
Wire Wire Line
	1300 10450 1350 10450
Wire Wire Line
	1350 10550 1300 10550
Wire Wire Line
	1300 10650 1350 10650
Wire Wire Line
	1350 10750 1300 10750
Wire Wire Line
	1300 9950 1350 9950
Wire Wire Line
	1350 9850 1300 9850
Wire Wire Line
	1350 9650 1300 9650
Wire Wire Line
	1300 9550 1350 9550
Wire Wire Line
	1350 9350 1300 9350
Wire Wire Line
	1300 9250 1350 9250
Wire Wire Line
	1350 8950 1300 8950
Wire Wire Line
	1300 9050 1350 9050
Wire Wire Line
	1350 4450 1300 4450
Wire Wire Line
	1300 4550 1350 4550
Wire Wire Line
	1350 4650 1300 4650
Wire Wire Line
	1300 2650 1350 2650
Wire Wire Line
	1350 2250 1300 2250
Wire Wire Line
	1300 2150 1350 2150
Wire Wire Line
	1300 1850 1350 1850
Wire Wire Line
	1350 1950 1300 1950
Wire Wire Line
	1350 1650 1300 1650
Wire Wire Line
	1300 1550 1350 1550
Wire Wire Line
	1300 1350 1350 1350
Wire Wire Line
	1350 1250 1300 1250
Wire Wire Line
	3050 3050 3100 3050
Wire Wire Line
	3100 3150 3050 3150
Wire Wire Line
	3050 3350 3100 3350
Wire Wire Line
	3100 3450 3050 3450
Wire Wire Line
	3050 3650 3100 3650
Wire Wire Line
	3100 3750 3050 3750
Wire Wire Line
	3100 3950 3050 3950
Wire Wire Line
	3050 4050 3100 4050
Wire Wire Line
	3100 4250 3050 4250
Wire Wire Line
	3050 4350 3100 4350
Wire Wire Line
	3100 4550 3050 4550
Wire Wire Line
	3050 4650 3100 4650
$Comp
L power:GND #PWR?
U 1 1 5D2FFADE
P 5700 4050
AR Path="/5D06AC46/5D2FFADE" Ref="#PWR?"  Part="1" 
AR Path="/5D2FFADE" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5700 3800 50  0001 C CNN
F 1 "GND" H 5705 3877 50  0000 C CNN
F 2 "" H 5700 4050 50  0001 C CNN
F 3 "" H 5700 4050 50  0001 C CNN
	1    5700 4050
	1    0    0    -1  
$EndComp
Text Notes 3850 3800 0    50   ~ 0
i.MX8M internal \noscillator output \nfor PCIe1
Text Notes 3850 4100 0    50   ~ 0
Refclk input \n(PAD_CLK) \nfor PCIe2
$Comp
L power:GND #PWR0197
U 1 1 609542A0
P 3800 6750
F 0 "#PWR0197" H 3800 6500 50  0001 C CNN
F 1 "GND" H 3805 6577 50  0000 C CNN
F 2 "" H 3800 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6750 3800 6550
Wire Wire Line
	3800 6550 3050 6550
Wire Wire Line
	3050 6250 3800 6250
Wire Wire Line
	3800 6250 3800 6550
Connection ~ 3800 6550
Wire Wire Line
	3050 5950 3800 5950
Wire Wire Line
	3800 5950 3800 6250
Connection ~ 3800 6250
Wire Wire Line
	3050 5650 3800 5650
Wire Wire Line
	3800 5650 3800 5950
Connection ~ 3800 5950
Wire Wire Line
	3050 5450 3800 5450
Wire Wire Line
	3800 5450 3800 5650
Connection ~ 3800 5650
Wire Wire Line
	3050 4750 3800 4750
Wire Wire Line
	3800 4750 3800 5450
Connection ~ 3800 5450
Wire Wire Line
	3050 4450 3800 4450
Wire Wire Line
	3800 4450 3800 4750
Connection ~ 3800 4750
Wire Wire Line
	3050 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3850
Connection ~ 3800 4450
Wire Wire Line
	3050 4150 3800 4150
Connection ~ 3800 4150
Wire Wire Line
	3800 4150 3800 4450
Wire Wire Line
	3050 3850 3800 3850
Connection ~ 3800 3850
Wire Wire Line
	3800 3850 3800 4150
Wire Wire Line
	3050 3250 3800 3250
Wire Wire Line
	3800 3250 3800 3550
Connection ~ 3800 3550
Wire Wire Line
	3050 2950 3800 2950
Wire Wire Line
	3800 2950 3800 3250
Connection ~ 3800 3250
$EndSCHEMATC
