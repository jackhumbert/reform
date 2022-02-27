EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MNT Reform 2 Upstream Battery Pack"
Date "2022-02-08"
Rev "2.0D-5"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L reform2-batterypack:KEYSTONE_54 U3
U 1 1 5F0FA857
P 8600 3400
F 0 "U3" H 8600 3400 50  0001 L BNN
F 1 "KEYSTONE_54" H 8350 4150 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 8600 3400 50  0001 C CNN
F 3 "" H 8600 3400 50  0001 C CNN
F 4 "Keystone" H 8600 3400 50  0001 C CNN "Manufacturer"
F 5 "54" H 8600 3400 50  0001 C CNN "Manufacturer_No"
	1    8600 3400
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U4
U 1 1 5F0FA861
P 9550 3400
F 0 "U4" H 9550 3400 50  0001 L BNN
F 1 "KEYSTONE_54" H 9300 4150 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 9550 3400 50  0001 C CNN
F 3 "" H 9550 3400 50  0001 C CNN
F 4 "Keystone" H 9550 3400 50  0001 C CNN "Manufacturer"
F 5 "54" H 9550 3400 50  0001 C CNN "Manufacturer_No"
	1    9550 3400
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U1
U 1 1 5F0F7120
P 6800 3400
F 0 "U1" H 6800 3400 50  0001 L BNN
F 1 "KEYSTONE_54" H 6550 4150 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 6800 3400 50  0001 C CNN
F 3 "" H 6800 3400 50  0001 C CNN
F 4 "Keystone" H 6800 3400 50  0001 C CNN "Manufacturer"
F 5 "54" H 6800 3400 50  0001 C CNN "Manufacturer_No"
	1    6800 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5DC7747A
P 6900 1200
F 0 "J1" V 6950 1250 50  0000 R CNN
F 1 "Conn_01x05_Female" V 6747 812 50  0001 R CNN
F 2 "Connector_Molex:Molex_Pico-Lock_504050-0591_1x05-1MP_P1.50mm_Horizontal" H 6900 1200 50  0001 C CNN
F 3 "~" H 6900 1200 50  0001 C CNN
F 4 "Molex" H 6900 1200 50  0001 C CNN "Manufacturer"
F 5 "504050-0591" H 6900 1200 50  0001 C CNN "Manufacturer_No"
	1    6900 1200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6800 3900 6800 3550
Wire Wire Line
	6900 1400 6900 1750
Wire Wire Line
	7000 1400 7000 1650
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5E649298
P 2850 6750
F 0 "H5" H 2950 6796 50  0000 L CNN
F 1 "MountingHole" H 2950 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2850 6750 50  0001 C CNN
F 3 "~" H 2850 6750 50  0001 C CNN
	1    2850 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5E6492A2
P 4000 7150
F 0 "H6" H 4100 7196 50  0000 L CNN
F 1 "MountingHole" H 4100 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4000 7150 50  0001 C CNN
F 3 "~" H 4000 7150 50  0001 C CNN
	1    4000 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5E6492AC
P 4000 7350
F 0 "H7" H 4100 7396 50  0000 L CNN
F 1 "MountingHole" H 4100 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4000 7350 50  0001 C CNN
F 3 "~" H 4000 7350 50  0001 C CNN
	1    4000 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5E6492B6
P 4000 7550
F 0 "H8" H 4100 7596 50  0000 L CNN
F 1 "MountingHole" H 4100 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4000 7550 50  0001 C CNN
F 3 "~" H 4000 7550 50  0001 C CNN
	1    4000 7550
	1    0    0    -1  
$EndComp
Text Notes 6550 1050 0    50   ~ 0
Connector pinout is\nflipped in respect to\nmotherboard pinout!
$Comp
L Mechanical:MountingHole H9
U 1 1 5E56D901
P 4000 6750
F 0 "H9" H 4100 6796 50  0000 L CNN
F 1 "LOGO" H 4100 6705 50  0000 L CNN
F 2 "reform2-batterypack:reform2-batterypack-badge-d5" H 4000 6750 50  0001 C CNN
F 3 "~" H 4000 6750 50  0001 C CNN
	1    4000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1550 7100 1400
$Comp
L reform2-batterypack:KEYSTONE_54 U2
U 1 1 5F0F9013
P 7700 3400
F 0 "U2" H 7700 3400 50  0001 L BNN
F 1 "KEYSTONE_54" H 7450 4150 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
F 4 "Keystone" H 7700 3400 50  0001 C CNN "Manufacturer"
F 5 "54" H 7700 3400 50  0001 C CNN "Manufacturer_No"
	1    7700 3400
	1    0    0    -1  
$EndComp
Text Label 6800 1850 0    50   ~ 0
V7
Text Label 6900 1750 0    50   ~ 0
V8
Wire Wire Line
	7700 3900 7700 3550
Text Label 7000 1650 0    50   ~ 0
V9
Text Label 7100 1550 0    50   ~ 0
V10
Text Notes 7450 1500 0    50   ~ 0
V10 = highest stack voltage
Wire Wire Line
	8600 3900 8600 3550
$Comp
L Device:R_Small R4
U 1 1 62051127
P 7700 5000
F 0 "R4" H 7642 4954 50  0000 R CNN
F 1 "2M" H 7642 5045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7700 5000 50  0001 C CNN
F 3 "~" H 7700 5000 50  0001 C CNN
F 4 "Bourns" H 7700 5000 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-8873ELF" H 7700 5000 50  0001 C CNN "Manufacturer_No"
	1    7700 5000
	1    0    0    1   
$EndComp
$Comp
L reform2-batterypack:CN301 U6
U 1 1 62051133
P 8450 5250
F 0 "U6" H 8450 5715 50  0000 C CNN
F 1 "CN301" H 8450 5624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8450 5250 50  0001 C CNN
F 3 "" H 8450 5250 50  0001 C CNN
F 4 "Consonance (LCSC)" H 8450 5250 50  0001 C CNN "Manufacturer"
F 5 "CN301" H 8450 5250 50  0001 C CNN "Manufacturer_No"
	1    8450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5550 8050 5550
Wire Wire Line
	8000 5050 8050 5050
Wire Wire Line
	7700 5400 7700 5300
Wire Wire Line
	7700 5300 8050 5300
Wire Wire Line
	7700 5100 7700 5300
Connection ~ 7700 5300
Wire Wire Line
	8000 5550 8000 5850
$Comp
L Device:R_Small R7
U 1 1 62051148
P 7700 5500
F 0 "R7" H 7642 5454 50  0000 R CNN
F 1 "120k" H 7642 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7700 5500 50  0001 C CNN
F 3 "~" H 7700 5500 50  0001 C CNN
F 4 "Panasonic" H 7700 5500 50  0001 C CNN "Manufacturer"
F 5 "ERJ-P03F1203V" H 7700 5500 50  0001 C CNN "Manufacturer_No"
	1    7700 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 5850 8000 5850
Wire Wire Line
	7700 4500 7700 4900
Connection ~ 7700 5850
Wire Wire Line
	7700 5600 7700 5850
Wire Wire Line
	7350 4400 7350 4500
Wire Wire Line
	7350 4500 7700 4500
$Comp
L power:GND #PWR0101
U 1 1 6212D23B
P 7700 6000
F 0 "#PWR0101" H 7700 5750 50  0001 C CNN
F 1 "GND" H 7705 5827 50  0000 C CNN
F 2 "" H 7700 6000 50  0001 C CNN
F 3 "" H 7700 6000 50  0001 C CNN
	1    7700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6000 7700 5850
Wire Wire Line
	8000 5050 8000 4750
Text Label 8000 4750 0    50   ~ 0
VCC
$Comp
L Device:C_Small C1
U 1 1 621356E3
P 6000 5450
F 0 "C1" H 6092 5496 50  0000 L CNN
F 1 "1uF" H 6092 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 5450 50  0001 C CNN
F 3 "~" H 6000 5450 50  0001 C CNN
	1    6000 5450
	1    0    0    -1  
$EndComp
Text Label 6000 5250 0    50   ~ 0
VCC
Wire Wire Line
	6000 5250 6000 5300
Wire Wire Line
	6000 5600 6000 5550
Text Label 5200 1750 0    50   ~ 0
V4
Text Label 5100 1650 0    50   ~ 0
V3
Text Label 5000 1550 0    50   ~ 0
V2
Text Notes 5500 4200 0    50   ~ 0
To downstream BB
Wire Wire Line
	7100 1550 9550 1550
Wire Wire Line
	7000 1650 8600 1650
Wire Wire Line
	6900 1750 7700 1750
Text Label 7350 4400 0    50   ~ 0
V10
$Comp
L power:GND #PWR0102
U 1 1 621B115E
P 1450 3850
F 0 "#PWR0102" H 1450 3600 50  0001 C CNN
F 1 "GND" H 1455 3677 50  0000 C CNN
F 2 "" H 1450 3850 50  0001 C CNN
F 3 "" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1450 4900 1450
Wire Wire Line
	9550 3900 9100 3900
Wire Wire Line
	9100 3900 9100 2950
Wire Wire Line
	9100 2950 8600 2950
Connection ~ 8600 2950
Wire Wire Line
	8600 2950 8600 3100
Wire Wire Line
	8600 3900 8150 3900
Wire Wire Line
	8150 3900 8150 2950
Wire Wire Line
	8150 2950 7700 2950
Connection ~ 7700 2950
Wire Wire Line
	7700 2950 7700 3100
Wire Wire Line
	7700 3900 7250 3900
Wire Wire Line
	7250 3900 7250 2950
Wire Wire Line
	7250 2950 6800 2950
Connection ~ 6800 2950
Wire Wire Line
	6800 2950 6800 3100
Wire Wire Line
	5000 1550 5000 1400
Text Label 5300 1850 0    50   ~ 0
V5
Wire Wire Line
	5300 3350 5300 2950
Wire Wire Line
	5300 3350 5700 3350
Wire Wire Line
	5100 1400 5100 1650
Wire Wire Line
	4350 1750 5200 1750
Wire Wire Line
	5200 1400 5200 1750
Wire Wire Line
	5100 1650 3400 1650
Text Label 1600 1900 0    50   ~ 0
EN
Wire Wire Line
	5000 1550 2350 1550
Wire Wire Line
	4900 1450 4900 1400
Wire Wire Line
	5700 3450 4350 3450
Wire Wire Line
	5700 3550 3400 3550
Wire Wire Line
	5700 3650 2350 3650
Wire Wire Line
	1450 3850 1450 3750
Connection ~ 1450 3750
Text Notes 4700 1050 0    50   ~ 0
TODO: check pinout
Wire Wire Line
	6800 3900 6200 3900
Wire Wire Line
	6200 3900 6200 2950
Wire Wire Line
	6200 2950 5300 2950
Connection ~ 5300 2950
Wire Wire Line
	6700 1750 6700 1400
$Comp
L Transistor_FET:2N7002E Q2
U 1 1 622754A9
P 9300 5300
F 0 "Q2" H 9505 5346 50  0000 L CNN
F 1 "PMV50ENEAR" H 9505 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 5225 50  0001 L CIN
F 3 "" H 9300 5300 50  0001 L CNN
	1    9300 5300
	1    0    0    -1  
$EndComp
Text Label 5650 4950 0    50   ~ 0
V10
$Comp
L Device:R_Small R11
U 1 1 62285F9A
P 5650 5100
F 0 "R11" H 5592 5054 50  0000 R CNN
F 1 "1M" H 5592 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 5100 50  0001 C CNN
F 3 "~" H 5650 5100 50  0001 C CNN
F 4 "Bourns" H 5650 5100 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-8873ELF" H 5650 5100 50  0001 C CNN "Manufacturer_No"
	1    5650 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 5000 5650 4950
$Comp
L Device:R_Small R12
U 1 1 6228BADB
P 5650 5450
F 0 "R12" H 5592 5404 50  0000 R CNN
F 1 "200k" H 5592 5495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 5450 50  0001 C CNN
F 3 "~" H 5650 5450 50  0001 C CNN
F 4 "Panasonic" H 5650 5450 50  0001 C CNN "Manufacturer"
F 5 "ERJ-P03F1203V" H 5650 5450 50  0001 C CNN "Manufacturer_No"
	1    5650 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 5200 5650 5300
Wire Wire Line
	5650 5300 6000 5300
Connection ~ 5650 5300
Wire Wire Line
	5650 5300 5650 5350
Connection ~ 6000 5300
Wire Wire Line
	6000 5300 6000 5350
$Comp
L power:GND #PWR0103
U 1 1 622A158F
P 5650 5650
F 0 "#PWR0103" H 5650 5400 50  0001 C CNN
F 1 "GND" H 5655 5477 50  0000 C CNN
F 2 "" H 5650 5650 50  0001 C CNN
F 3 "" H 5650 5650 50  0001 C CNN
	1    5650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5650 5650 5600
Wire Wire Line
	5650 5600 6000 5600
Connection ~ 5650 5600
Wire Wire Line
	5650 5600 5650 5550
Wire Wire Line
	8850 5300 9000 5300
Connection ~ 7700 4500
Wire Wire Line
	9400 5850 9400 5500
Connection ~ 8000 5850
NoConn ~ 6700 1750
$Comp
L Relay_SolidState:TLP175A U5
U 1 1 62312E50
P 2050 2400
F 0 "U5" H 2050 2725 50  0000 C CNN
F 1 "TLP176AM" H 2050 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 2050 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 2050 2400 50  0001 L CNN
	1    2050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2500 1750 2500
Wire Wire Line
	1600 2300 1750 2300
Wire Wire Line
	2350 1550 2350 2300
Wire Wire Line
	2350 2500 2350 3650
$Comp
L Relay_SolidState:TLP175A U7
U 1 1 62358F00
P 3100 2400
F 0 "U7" H 3100 2725 50  0000 C CNN
F 1 "TLP176AM" H 3100 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 3100 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 3100 2400 50  0001 L CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2800 2500
Wire Wire Line
	2650 2300 2800 2300
$Comp
L Relay_SolidState:TLP175A U8
U 1 1 6235F98B
P 4050 2400
F 0 "U8" H 4050 2725 50  0000 C CNN
F 1 "TLP176AM" H 4050 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 4050 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 4050 2400 50  0001 L CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 3750 2500
Wire Wire Line
	3600 2300 3750 2300
$Comp
L Relay_SolidState:TLP175A U9
U 1 1 62365C21
P 5000 2400
F 0 "U9" H 5000 2725 50  0000 C CNN
F 1 "TLP176AM" H 5000 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 5000 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 5000 2400 50  0001 L CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2500 4700 2500
Wire Wire Line
	4550 2300 4700 2300
Wire Wire Line
	5300 1400 5300 2300
Wire Wire Line
	5300 2500 5300 2950
Wire Wire Line
	4350 2500 4350 3450
Wire Wire Line
	4350 1750 4350 2300
Wire Wire Line
	3400 1650 3400 2300
Wire Wire Line
	3400 2500 3400 3550
$Comp
L Relay_SolidState:TLP175A U10
U 1 1 62398CE3
P 6500 2400
F 0 "U10" H 6500 2725 50  0000 C CNN
F 1 "TLP176AM" H 6500 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 6500 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 6500 2400 50  0001 L CNN
	1    6500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2500 6200 2500
Wire Wire Line
	6050 2300 6200 2300
$Comp
L Relay_SolidState:TLP175A U11
U 1 1 6239D86C
P 7400 2400
F 0 "U11" H 7400 2725 50  0000 C CNN
F 1 "TLP176AM" H 7400 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 7400 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 7400 2400 50  0001 L CNN
	1    7400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2500 7100 2500
Wire Wire Line
	6950 2300 7100 2300
$Comp
L Relay_SolidState:TLP175A U12
U 1 1 623A2B66
P 8300 2400
F 0 "U12" H 8300 2725 50  0000 C CNN
F 1 "TLP176AM" H 8300 2634 50  0000 C CNN
F 2 "Package_SO:MFSOP6-4_4.4x3.6mm_P1.27mm" H 8300 2100 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=13665&prodName=TLP175A" H 8300 2400 50  0001 L CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2500 8000 2500
Wire Wire Line
	7850 2300 8000 2300
Wire Wire Line
	8600 1650 8600 2300
Wire Wire Line
	8600 2500 8600 2950
Wire Wire Line
	7700 2500 7700 2950
Wire Wire Line
	7700 1750 7700 2300
Wire Wire Line
	6800 1400 6800 2300
Wire Wire Line
	6800 2500 6800 2950
Wire Wire Line
	8000 5850 9000 5850
Wire Wire Line
	9550 1550 9550 3100
Wire Wire Line
	1450 3750 1450 1450
Wire Wire Line
	1650 3750 1450 3750
Text GLabel 9000 5200 1    50   Input ~ 0
ENSTACK
Wire Wire Line
	9000 5200 9000 5300
Connection ~ 9000 5300
Wire Wire Line
	9000 5300 9100 5300
Text GLabel 1850 4350 3    50   Input ~ 0
ENSTACK
Wire Wire Line
	1850 4100 1850 4050
Wire Wire Line
	9550 3550 9550 3900
Text Notes 1450 1400 0    50   ~ 0
GND from motherboard
Text Notes 5050 3950 0    50   ~ 0
Lowest voltage of\ndownstream stack
Text Notes 5350 3250 0    50   ~ 0
Highest voltage of\ndownstream stack
$Comp
L Device:R_Small R1
U 1 1 6244346E
P 1600 2100
F 0 "R1" H 1541 2054 50  0000 R CNN
F 1 "2k" H 1541 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1600 2100 50  0001 C CNN
F 3 "~" H 1600 2100 50  0001 C CNN
	1    1600 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 2300 1600 2200
Wire Wire Line
	1600 1900 1600 2000
Text Label 2650 1900 0    50   ~ 0
EN
$Comp
L Device:R_Small R2
U 1 1 62450CF3
P 2650 2100
F 0 "R2" H 2591 2054 50  0000 R CNN
F 1 "2k" H 2591 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 2100 50  0001 C CNN
F 3 "~" H 2650 2100 50  0001 C CNN
	1    2650 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1900 2650 2000
Text Label 3600 1900 0    50   ~ 0
EN
$Comp
L Device:R_Small R3
U 1 1 62455A50
P 3600 2100
F 0 "R3" H 3541 2054 50  0000 R CNN
F 1 "2k" H 3541 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3600 2100 50  0001 C CNN
F 3 "~" H 3600 2100 50  0001 C CNN
	1    3600 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 1900 3600 2000
Text Label 4550 1900 0    50   ~ 0
EN
$Comp
L Device:R_Small R5
U 1 1 6245A72E
P 4550 2100
F 0 "R5" H 4491 2054 50  0000 R CNN
F 1 "2k" H 4491 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4550 2100 50  0001 C CNN
F 3 "~" H 4550 2100 50  0001 C CNN
	1    4550 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 1900 4550 2000
Wire Wire Line
	4550 2200 4550 2300
Wire Wire Line
	3600 2200 3600 2300
Wire Wire Line
	2650 2200 2650 2300
Text Label 6050 1900 0    50   ~ 0
EN
$Comp
L Device:R_Small R6
U 1 1 6246E26E
P 6050 2100
F 0 "R6" H 5991 2054 50  0000 R CNN
F 1 "2k" H 5991 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6050 2100 50  0001 C CNN
F 3 "~" H 6050 2100 50  0001 C CNN
	1    6050 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 1900 6050 2000
Wire Wire Line
	6050 2200 6050 2300
Text Label 6950 1900 0    50   ~ 0
EN
$Comp
L Device:R_Small R8
U 1 1 6247391C
P 6950 2100
F 0 "R8" H 6891 2054 50  0000 R CNN
F 1 "2k" H 6891 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6950 2100 50  0001 C CNN
F 3 "~" H 6950 2100 50  0001 C CNN
	1    6950 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 1900 6950 2000
Wire Wire Line
	6950 2200 6950 2300
$Comp
L Device:R_Small R9
U 1 1 62478CB6
P 7850 2100
F 0 "R9" H 7791 2054 50  0000 R CNN
F 1 "2k" H 7791 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7850 2100 50  0001 C CNN
F 3 "~" H 7850 2100 50  0001 C CNN
	1    7850 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 1900 7850 2000
Wire Wire Line
	7850 2200 7850 2300
Text Label 7850 1900 0    50   ~ 0
EN
$Comp
L Device:D_Zener_Small_ALT D1
U 1 1 6248DB0A
P 6350 5450
F 0 "D1" V 6304 5520 50  0000 L CNN
F 1 "BZX84-C5V6,215" V 6395 5520 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" V 6350 5450 50  0001 C CNN
F 3 "~" V 6350 5450 50  0001 C CNN
	1    6350 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 5600 6350 5600
Wire Wire Line
	6350 5600 6350 5550
Connection ~ 6000 5600
Wire Wire Line
	6000 5300 6350 5300
Wire Wire Line
	6350 5300 6350 5350
Text Notes 6400 5650 0    50   ~ 0
Optional
$Comp
L Device:R_Small R13
U 1 1 624AA56C
P 9000 5550
F 0 "R13" H 8942 5504 50  0000 R CNN
F 1 "120k" H 8942 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5550 50  0001 C CNN
F 3 "~" H 9000 5550 50  0001 C CNN
F 4 "Bourns" H 9000 5550 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-8873ELF" H 9000 5550 50  0001 C CNN "Manufacturer_No"
	1    9000 5550
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 5450 9000 5300
Wire Wire Line
	9000 5650 9000 5850
Connection ~ 9000 5850
Wire Wire Line
	9000 5850 9400 5850
Wire Wire Line
	9400 4850 9400 5100
Text Label 9550 4850 0    50   ~ 0
ENLO
Wire Wire Line
	9550 4850 9400 4850
Text Label 7850 2650 0    50   ~ 0
ENLO
Wire Wire Line
	7850 2500 7850 2650
Text Label 6950 2650 0    50   ~ 0
ENLO
Wire Wire Line
	6950 2500 6950 2650
Text Label 6050 2650 0    50   ~ 0
ENLO
Wire Wire Line
	6050 2500 6050 2650
Text Label 4550 2650 0    50   ~ 0
ENLO
Wire Wire Line
	4550 2500 4550 2650
Text Label 3600 2650 0    50   ~ 0
ENLO
Wire Wire Line
	3600 2500 3600 2650
Text Label 2650 2650 0    50   ~ 0
ENLO
Wire Wire Line
	2650 2500 2650 2650
Text Label 1600 2650 0    50   ~ 0
ENLO
Wire Wire Line
	1600 2500 1600 2650
Wire Wire Line
	7700 4500 8900 4500
Text Label 9550 4500 0    50   ~ 0
EN
$Comp
L Device:R_Small R10
U 1 1 624F9CF3
P 9000 4500
F 0 "R10" H 8942 4454 50  0000 R CNN
F 1 "0" H 8942 4545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 4500 50  0001 C CNN
F 3 "~" H 9000 4500 50  0001 C CNN
F 4 "Bourns" H 9000 4500 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-8873ELF" H 9000 4500 50  0001 C CNN "Manufacturer_No"
	1    9000 4500
	0    -1   1    0   
$EndComp
Wire Wire Line
	9100 4500 9550 4500
Wire Wire Line
	5700 3750 2050 3750
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 62186AA0
P 5100 1200
F 0 "J2" V 5150 1250 50  0000 R CNN
F 1 "Conn_01x05_Female" V 4947 812 50  0001 R CNN
F 2 "Connector_Molex:Molex_Pico-Lock_504050-0591_1x05-1MP_P1.50mm_Horizontal" H 5100 1200 50  0001 C CNN
F 3 "~" H 5100 1200 50  0001 C CNN
F 4 "Molex" H 5100 1200 50  0001 C CNN "Manufacturer"
F 5 "504050-0591" H 5100 1200 50  0001 C CNN "Manufacturer_No"
	1    5100 1200
	0    1    -1   0   
$EndComp
$Comp
L Connector:Conn_01x05_Female J3
U 1 1 6218F84F
P 5900 3550
F 0 "J3" V 5950 3600 50  0000 R CNN
F 1 "Conn_01x05_Female" V 5747 3162 50  0001 R CNN
F 2 "Connector_Molex:Molex_Pico-Lock_504050-0591_1x05-1MP_P1.50mm_Horizontal" H 5900 3550 50  0001 C CNN
F 3 "~" H 5900 3550 50  0001 C CNN
F 4 "Molex" H 5900 3550 50  0001 C CNN "Manufacturer"
F 5 "504050-0591" H 5900 3550 50  0001 C CNN "Manufacturer_No"
	1    5900 3550
	1    0    0    1   
$EndComp
Text Notes 7550 1050 0    50   ~ 0
Hazard:\nKiCAD's pad numbering of PicoLock\nhas been reversed by an update
$Comp
L Transistor_FET:Si7450DP Q1
U 1 1 62408E8D
P 1850 3850
F 0 "Q1" V 2192 3850 50  0000 C CNN
F 1 "Si7450DP" V 2101 3850 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 2050 3775 50  0001 L CIN
F 3 "https://www.vishay.com/docs/71432/si7450dp.pdf" H 1850 3850 50  0001 L CNN
	1    1850 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 6265314B
P 2850 7050
F 0 "R15" H 2792 7004 50  0000 R CNN
F 1 "0" H 2792 7095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2850 7050 50  0001 C CNN
F 3 "~" H 2850 7050 50  0001 C CNN
F 4 "" H 2850 7050 50  0001 C CNN "Manufacturer"
F 5 "" H 2850 7050 50  0001 C CNN "Manufacturer_No"
	1    2850 7050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 626537BB
P 2850 7250
F 0 "#PWR01" H 2850 7000 50  0001 C CNN
F 1 "GND" H 2855 7077 50  0000 C CNN
F 2 "" H 2850 7250 50  0001 C CNN
F 3 "" H 2850 7250 50  0001 C CNN
	1    2850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7250 2850 7150
Wire Wire Line
	2850 6950 2850 6850
$Comp
L Device:R_Small R14
U 1 1 620343ED
P 1850 4200
F 0 "R14" H 1792 4154 50  0000 R CNN
F 1 "0" H 1792 4245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 4200 50  0001 C CNN
F 3 "~" H 1850 4200 50  0001 C CNN
F 4 "Bourns" H 1850 4200 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-8873ELF" H 1850 4200 50  0001 C CNN "Manufacturer_No"
	1    1850 4200
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 4350 1850 4300
$EndSCHEMATC
