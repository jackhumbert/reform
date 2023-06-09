EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MNT Reform 2 Keyboard OLED"
Date "2020-09-08"
Rev "2.0R-1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CFAB6F9
P 5400 6200
F 0 "H1" H 5500 6249 50  0000 L CNN
F 1 "MH1" H 5500 6158 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 5400 6200 50  0001 C CNN
F 3 "~" H 5400 6200 50  0001 C CNN
	1    5400 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CFABDD2
P 5750 6200
F 0 "H2" H 5850 6249 50  0000 L CNN
F 1 "MH2" H 5850 6158 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 5750 6200 50  0001 C CNN
F 3 "~" H 5750 6200 50  0001 C CNN
	1    5750 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CFB0132
P 5400 6400
F 0 "#PWR03" H 5400 6150 50  0001 C CNN
F 1 "GND" H 5400 6250 50  0000 C CNN
F 2 "" H 5400 6400 50  0001 C CNN
F 3 "" H 5400 6400 50  0001 C CNN
	1    5400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6400 5400 6300
Wire Wire Line
	5400 6300 5750 6300
Connection ~ 5400 6300
$Comp
L Mechanical:MountingHole GFX1
U 1 1 5CFBB66E
P 5550 5500
F 0 "GFX1" H 5650 5546 50  0000 L CNN
F 1 "MNT" H 5650 5455 50  0000 L CNN
F 2 "reform2:mntreform" H 5550 5500 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5D0C1E6C
P 7700 3750
F 0 "J1" H 7700 4050 50  0000 C CNN
F 1 "AUX" H 7700 3350 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0040_1x04-1MP_P1.00mm_Horizontal" H 7700 3750 50  0001 C CNN
F 3 "" H 7700 3750 50  0001 C CNN
F 4 "Molex" H 7700 3750 50  0001 C CNN "Manufacturer"
F 5 "200528-0040" H 7700 3750 50  0001 C CNN "Manufacturer_No"
	1    7700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D0C1E81
P 6950 4000
F 0 "#PWR05" H 6950 3750 50  0001 C CNN
F 1 "GND" H 6950 3850 50  0000 C CNN
F 2 "" H 6950 4000 50  0001 C CNN
F 3 "" H 6950 4000 50  0001 C CNN
	1    6950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5DC7F0C4
P 4950 2500
F 0 "C5" H 4960 2570 50  0000 L CNN
F 1 "1uF" H 4960 2420 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 2500 50  0001 C CNN
F 3 "" H 4950 2500 50  0001 C CNN
F 4 "Taiyo Yuden" H 4950 2500 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 4950 2500 50  0001 C CNN "Manufacturer_No"
	1    4950 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 2400 5200 2400
Wire Wire Line
	4950 2600 5200 2600
$Comp
L Device:C_Small C6
U 1 1 5DC82D60
P 4950 2900
F 0 "C6" H 4960 2970 50  0000 L CNN
F 1 "1uF" H 4960 2820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 2900 50  0001 C CNN
F 3 "" H 4950 2900 50  0001 C CNN
F 4 "Taiyo Yuden" H 4950 2900 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 4950 2900 50  0001 C CNN "Manufacturer_No"
	1    4950 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 2800 5200 2800
Wire Wire Line
	4950 3000 5200 3000
$Comp
L power:+3V3 #PWR02
U 1 1 5DC84E30
P 4550 3100
F 0 "#PWR02" H 4550 2950 50  0001 C CNN
F 1 "+3V3" H 4565 3273 50  0000 C CNN
F 2 "" H 4550 3100 50  0001 C CNN
F 3 "" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3200 4750 3200
Wire Wire Line
	4550 3200 4550 3100
$Comp
L power:GND #PWR01
U 1 1 5DC86F36
P 4050 5200
F 0 "#PWR01" H 4050 4950 50  0001 C CNN
F 1 "GND" H 4050 5050 50  0000 C CNN
F 2 "" H 4050 5200 50  0001 C CNN
F 3 "" H 4050 5200 50  0001 C CNN
	1    4050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3600 4050 3600
Wire Wire Line
	4050 3600 4050 3800
Wire Wire Line
	4550 3200 4550 3800
Wire Wire Line
	4550 3800 5200 3800
Connection ~ 4550 3200
$Comp
L Device:R_Small R1
U 1 1 5DC8A9C1
P 4900 4600
F 0 "R1" V 5000 4600 50  0000 L CNN
F 1 "330k" V 4800 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4900 4600 50  0001 C CNN
F 3 "" H 4900 4600 50  0001 C CNN
F 4 "Yageo" H 4900 4600 50  0001 C CNN "Manufacturer"
F 5 "AF0603FR-07330KL" H 4900 4600 50  0001 C CNN "Manufacturer_No"
	1    4900 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4600 5200 4600
$Comp
L Device:C_Small C3
U 1 1 5DC8CE4C
P 4600 4800
F 0 "C3" H 4610 4870 50  0000 L CNN
F 1 "10uF" H 4610 4720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4600 4800 50  0001 C CNN
F 3 "" H 4600 4800 50  0001 C CNN
F 4 "Taiyo Yuden" H 4600 4800 50  0001 C CNN "Manufacturer"
F 5 "LMK107BBJ106KALT" H 4600 4800 50  0001 C CNN "Manufacturer_No"
	1    4600 4800
	0    1    -1   0   
$EndComp
Wire Wire Line
	4700 4800 5200 4800
$Comp
L Device:C_Small C4
U 1 1 5DC8F872
P 4850 5000
F 0 "C4" H 4860 5070 50  0000 L CNN
F 1 "10uF" H 4860 4920 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4850 5000 50  0001 C CNN
F 3 "" H 4850 5000 50  0001 C CNN
F 4 "Taiyo Yuden" H 4850 5000 50  0001 C CNN "Manufacturer"
F 5 "LMK107BBJ106KALT" H 4850 5000 50  0001 C CNN "Manufacturer_No"
	1    4850 5000
	0    1    -1   0   
$EndComp
Wire Wire Line
	4950 5000 5200 5000
Wire Wire Line
	4750 5000 4050 5000
Connection ~ 4050 5000
Wire Wire Line
	4050 5000 4050 5200
Wire Wire Line
	4500 4800 4050 4800
Connection ~ 4050 4800
Wire Wire Line
	4050 4800 4050 5000
Wire Wire Line
	4800 4600 4050 4600
Connection ~ 4050 4600
Wire Wire Line
	4050 4600 4050 4800
Text GLabel 5200 4200 0    60   Input ~ 0
DISP_SCL
Text GLabel 5200 4400 0    60   Input ~ 0
DISP_SDA
Text GLabel 7500 3750 0    60   Input ~ 0
DISP_SCL
Text GLabel 7500 3850 0    60   Input ~ 0
DISP_SDA
$Comp
L power:+3V3 #PWR04
U 1 1 5DC9A968
P 6950 3600
F 0 "#PWR04" H 6950 3450 50  0001 C CNN
F 1 "+3V3" V 6965 3728 50  0000 L CNN
F 2 "" H 6950 3600 50  0001 C CNN
F 3 "" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DCAC522
P 4300 3200
F 0 "C1" H 4310 3270 50  0000 L CNN
F 1 "1uF" H 4310 3120 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 3200 50  0001 C CNN
F 3 "" H 4300 3200 50  0001 C CNN
F 4 "Taiyo Yuden" H 4300 3200 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 4300 3200 50  0001 C CNN "Manufacturer_No"
	1    4300 3200
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DCACDA3
P 4300 3800
F 0 "C2" H 4310 3870 50  0000 L CNN
F 1 "1uF" H 4310 3720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 3800 50  0001 C CNN
F 3 "" H 4300 3800 50  0001 C CNN
F 4 "Taiyo Yuden" H 4300 3800 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 4300 3800 50  0001 C CNN "Manufacturer_No"
	1    4300 3800
	0    1    -1   0   
$EndComp
Wire Wire Line
	4400 3800 4550 3800
Connection ~ 4550 3800
Wire Wire Line
	4550 3200 4400 3200
Wire Wire Line
	4200 3200 4050 3200
Wire Wire Line
	4050 3200 4050 3600
Connection ~ 4050 3600
Wire Wire Line
	4200 3800 4050 3800
Connection ~ 4050 3800
Text Notes 4450 2100 0    60   ~ 0
Circuit based on Adafruit 931
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DC67359
P 7300 3650
F 0 "#FLG0101" H 7300 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 7300 3823 50  0000 C CNN
F 2 "" H 7300 3650 50  0001 C CNN
F 3 "~" H 7300 3650 50  0001 C CNN
	1    7300 3650
	1    0    0    -1  
$EndComp
Connection ~ 7300 3650
Wire Wire Line
	7300 3650 7500 3650
Text Notes 3350 4050 0    50   ~ 0
Reset RC circuit
$Comp
L SSD1306_OLED-0.91-128x32:SSD1306 U1
U 1 1 5EAB622B
P 5200 3700
F 0 "U1" V 5147 4378 60  0000 L CNN
F 1 "SSD1306" V 5253 4378 60  0000 L CNN
F 2 "KiCad-SSD1306_OLED-0:SSD1306_OLED-0.91-128x32" H 5200 3700 60  0001 C CNN
F 3 "" H 5200 3700 60  0001 C CNN
F 4 "Enrich Electronics" H 5200 3700 50  0001 C CNN "Manufacturer"
F 5 "ENH-OB00910003" H 5200 3700 50  0001 C CNN "Manufacturer_No"
	1    5200 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E7CCF56
P 4300 4000
F 0 "C7" H 4310 4070 50  0000 L CNN
F 1 "1uF" H 4310 3920 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
F 4 "Taiyo Yuden" H 4300 4000 50  0001 C CNN "Manufacturer"
F 5 "UMK107BJ105KA-T" H 4300 4000 50  0001 C CNN "Manufacturer_No"
	1    4300 4000
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E7D0D47
P 4750 3400
F 0 "R2" V 4650 3350 50  0000 L CNN
F 1 "4.7k" V 4850 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
F 4 "Yageo" H 4750 3400 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 4750 3400 50  0001 C CNN "Manufacturer_No"
	1    4750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3800 4050 4000
Wire Wire Line
	4750 3300 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4750 3200 4550 3200
Wire Wire Line
	4750 3500 4750 4000
Connection ~ 4750 4000
Wire Wire Line
	4750 4000 5200 4000
Wire Wire Line
	4400 4000 4750 4000
Wire Wire Line
	4200 4000 4050 4000
Connection ~ 4050 4000
Wire Wire Line
	4050 4000 4050 4600
$Comp
L Mechanical:MountingHole GFX2
U 1 1 5F85DFE2
P 5550 5750
F 0 "GFX2" H 5650 5796 50  0000 L CNN
F 1 "BADGE" H 5650 5705 50  0000 L CNN
F 2 "footprints-oled:reform2-oled-badge" H 5550 5750 50  0001 C CNN
F 3 "~" H 5550 5750 50  0001 C CNN
	1    5550 5750
	1    0    0    -1  
$EndComp
Text Notes 4450 1950 0    60   ~ 0
SSD1306 OLED
Wire Wire Line
	6950 3650 7300 3650
Wire Wire Line
	6950 4000 6950 3950
Wire Wire Line
	6950 3950 7500 3950
Wire Wire Line
	6950 3650 6950 3600
$EndSCHEMATC
