EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MNT Reform 2 Battery Pack"
Date "2020-04-11"
Rev "2.0R-1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L reform2-batterypack:KEYSTONE_54 U2
U 1 1 5F0F9013
P 6050 4700
F 0 "U2" H 6050 4700 50  0001 L BNN
F 1 "KEYSTONE_54" H 5800 5450 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 6050 4700 50  0001 C CNN
F 3 "" H 6050 4700 50  0001 C CNN
F 4 "Keystone" H 6050 4700 50  0001 C CNN "Manufacturer"
F 5 "54" H 6050 4700 50  0001 C CNN "Manufacturer_No"
	1    6050 4700
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U3
U 1 1 5F0FA857
P 6500 4700
F 0 "U3" H 6500 4700 50  0001 L BNN
F 1 "KEYSTONE_54" H 6250 5450 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 6500 4700 50  0001 C CNN
F 3 "" H 6500 4700 50  0001 C CNN
F 4 "Keystone" H 6500 4700 50  0001 C CNN "Manufacturer"
F 5 "54" H 6500 4700 50  0001 C CNN "Manufacturer_No"
	1    6500 4700
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U4
U 1 1 5F0FA861
P 6950 4700
F 0 "U4" H 6950 4700 50  0001 L BNN
F 1 "KEYSTONE_54" H 6700 5450 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 6950 4700 50  0001 C CNN
F 3 "" H 6950 4700 50  0001 C CNN
F 4 "Keystone" H 6950 4700 50  0001 C CNN "Manufacturer"
F 5 "54" H 6950 4700 50  0001 C CNN "Manufacturer_No"
	1    6950 4700
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U1
U 1 1 5F0F7120
P 5600 4700
F 0 "U1" H 5600 4700 50  0001 L BNN
F 1 "KEYSTONE_54" H 5350 5450 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 5600 4700 50  0001 C CNN
F 3 "" H 5600 4700 50  0001 C CNN
F 4 "Keystone" H 5600 4700 50  0001 C CNN "Manufacturer"
F 5 "54" H 5600 4700 50  0001 C CNN "Manufacturer_No"
	1    5600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4400 5600 4250
Wire Wire Line
	5600 4250 5700 4250
Wire Wire Line
	5850 4250 5850 5000
Wire Wire Line
	5850 5000 6050 5000
Wire Wire Line
	6050 5000 6050 4850
Wire Wire Line
	6050 4400 6050 4250
Wire Wire Line
	6050 4250 6150 4250
Wire Wire Line
	6300 4250 6300 5000
Wire Wire Line
	6300 5000 6500 5000
Wire Wire Line
	6500 5000 6500 4850
Wire Wire Line
	6500 4400 6500 4250
Wire Wire Line
	6500 4250 6600 4250
Wire Wire Line
	6750 4250 6750 5000
Wire Wire Line
	6750 5000 6950 5000
Wire Wire Line
	6950 5000 6950 4850
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5DC7747A
P 6300 3400
F 0 "J1" V 6238 3012 50  0000 R CNN
F 1 "Conn_01x05_Female" V 6147 3012 50  0001 R CNN
F 2 "Connector_Molex:Molex_Pico-Lock_504050-0591_1x05-1MP_P1.50mm_Horizontal" H 6300 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
F 4 "Molex" H 6300 3400 50  0001 C CNN "Manufacturer"
F 5 "504050-0591" H 6300 3400 50  0001 C CNN "Manufacturer_No"
	1    6300 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 4400 6950 3850
Wire Wire Line
	6950 3850 6500 3850
Wire Wire Line
	6400 3950 6600 3950
Wire Wire Line
	6600 3950 6600 4250
Connection ~ 6600 4250
Wire Wire Line
	6600 4250 6750 4250
Wire Wire Line
	6300 3950 6150 3950
Wire Wire Line
	6150 3950 6150 4250
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6300 4250
Wire Wire Line
	6200 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4250
Connection ~ 5700 4250
Wire Wire Line
	5700 4250 5850 4250
Wire Wire Line
	5400 5000 5600 5000
Wire Wire Line
	5600 5000 5600 4850
Wire Wire Line
	6100 3600 6100 3700
Wire Wire Line
	6100 3700 5400 3700
Wire Wire Line
	5400 3700 5400 5000
Wire Wire Line
	6200 3600 6200 3850
Wire Wire Line
	6300 3600 6300 3950
Wire Wire Line
	6400 3600 6400 3950
Wire Wire Line
	6500 3600 6500 3850
$Comp
L Mechanical:MountingHole H5
U 1 1 5E649298
P 4350 4200
F 0 "H5" H 4450 4246 50  0000 L CNN
F 1 "MountingHole" H 4450 4155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4350 4200 50  0001 C CNN
F 3 "~" H 4350 4200 50  0001 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5E6492A2
P 4350 4400
F 0 "H6" H 4450 4446 50  0000 L CNN
F 1 "MountingHole" H 4450 4355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4350 4400 50  0001 C CNN
F 3 "~" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5E6492AC
P 4350 4600
F 0 "H7" H 4450 4646 50  0000 L CNN
F 1 "MountingHole" H 4450 4555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4350 4600 50  0001 C CNN
F 3 "~" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5E6492B6
P 4350 4800
F 0 "H8" H 4450 4846 50  0000 L CNN
F 1 "MountingHole" H 4450 4755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4350 4800 50  0001 C CNN
F 3 "~" H 4350 4800 50  0001 C CNN
	1    4350 4800
	1    0    0    -1  
$EndComp
Text Notes 5950 3250 0    50   ~ 0
Connector pinout is\nflipped in respect to\nmotherboard pinout!
$Comp
L Mechanical:MountingHole H9
U 1 1 5E56D901
P 4350 4000
F 0 "H9" H 4450 4046 50  0000 L CNN
F 1 "LOGO" H 4450 3955 50  0000 L CNN
F 2 "footprints:mnt-minilogo" H 4350 4000 50  0001 C CNN
F 3 "~" H 4350 4000 50  0001 C CNN
	1    4350 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
