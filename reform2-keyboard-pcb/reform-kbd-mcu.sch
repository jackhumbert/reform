EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "MNT Reform 2 Keyboard"
Date "2020-09-02"
Rev "2.0R-1"
Comp "Copyright 2017-2020 MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR07
U 1 1 5A20720B
P 3100 4800
F 0 "#PWR07" H 3100 4550 50  0001 C CNN
F 1 "GND" H 3100 4650 50  0000 C CNN
F 2 "" H 3100 4800 50  0001 C CNN
F 3 "" H 3100 4800 50  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5A2073AA
P 1700 3800
F 0 "C1" H 1710 3870 50  0000 L CNN
F 1 "18pF" H 1710 3720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1700 3800 50  0001 C CNN
F 3 "" H 1700 3800 50  0001 C CNN
F 4 "Yageo" H 1700 3800 50  0001 C CNN "Manufacturer"
F 5 "CC0603JRNPO9BN180" H 1700 3800 50  0001 C CNN "Manufacturer_No"
	1    1700 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5A2073F7
P 2300 3800
F 0 "C2" H 2310 3870 50  0000 L CNN
F 1 "18pF" H 2310 3720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0001 C CNN
F 4 "Yageo" H 2300 3800 50  0001 C CNN "Manufacturer"
F 5 "CC0603JRNPO9BN180" H 2300 3800 50  0001 C CNN "Manufacturer_No"
	1    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5A207477
P 2000 4050
F 0 "#PWR03" H 2000 3800 50  0001 C CNN
F 1 "GND" H 2000 3900 50  0000 C CNN
F 2 "" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5A20764E
P 3100 4650
F 0 "C3" H 3110 4720 50  0000 L CNN
F 1 "1uF" H 3110 4570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3100 4650 50  0001 C CNN
F 3 "" H 3100 4650 50  0001 C CNN
F 4 "TDK" H 3100 4650 50  0001 C CNN "Manufacturer"
F 5 "C1608X8L1C105K080AC" H 3100 4650 50  0001 C CNN "Manufacturer_No"
	1    3100 4650
	1    0    0    -1  
$EndComp
Text GLabel 2650 4100 0    60   Input ~ 0
D+
Text GLabel 2650 4200 0    60   Input ~ 0
D-
$Comp
L power:GND #PWR010
U 1 1 5A207A65
P 3750 6500
F 0 "#PWR010" H 3750 6250 50  0001 C CNN
F 1 "GND" H 3750 6350 50  0000 C CNN
F 2 "" H 3750 6500 50  0001 C CNN
F 3 "" H 3750 6500 50  0001 C CNN
	1    3750 6500
	1    0    0    -1  
$EndComp
Text GLabel 2950 3100 0    60   Input ~ 0
RESET
Text GLabel 4450 3700 2    60   Input ~ 0
ROW1
Text GLabel 4450 3600 2    60   Input ~ 0
ROW2
Text GLabel 4450 3500 2    60   Input ~ 0
ROW3
Text GLabel 4450 5000 2    60   Input ~ 0
ROW4
Text GLabel 4450 4900 2    60   Input ~ 0
ROW5
Text GLabel 4450 4700 2    60   Input ~ 0
ROW6
Text GLabel 4450 4800 2    60   Input ~ 0
COL1
Text GLabel 4450 6000 2    60   Input ~ 0
COL2
Text GLabel 4450 5300 2    60   Input ~ 0
COL3
Text GLabel 4450 4100 2    60   Input ~ 0
COL4
Text GLabel 4450 3400 2    60   Input ~ 0
COL5
Text GLabel 4450 3300 2    60   Input ~ 0
COL6
Text GLabel 4450 3200 2    60   Input ~ 0
COL7
Text GLabel 4450 3100 2    60   Input ~ 0
COL8
Text GLabel 4450 5500 2    60   Input ~ 0
COL9
Text GLabel 4450 5600 2    60   Input ~ 0
COL10
Text GLabel 4450 5700 2    60   Input ~ 0
COL11
Text GLabel 4450 5800 2    60   Input ~ 0
COL12
Text GLabel 4450 5900 2    60   Input ~ 0
COL13
Text GLabel 4450 4000 2    60   Input ~ 0
COL14
$Comp
L Device:R_Small R2
U 1 1 5A213EDF
P 2800 4200
F 0 "R2" V 2900 4150 50  0000 L CNN
F 1 "22" V 2800 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 4200 50  0001 C CNN
F 3 "" H 2800 4200 50  0001 C CNN
F 4 "Yageo" H 2800 4200 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0722RL" H 2800 4200 50  0001 C CNN "Manufacturer_No"
	1    2800 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5A213F64
P 2800 4100
F 0 "R1" V 2700 4050 50  0000 L CNN
F 1 "22" V 2800 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 4100 50  0001 C CNN
F 3 "" H 2800 4100 50  0001 C CNN
F 4 "Yageo" H 2800 4100 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0722RL" H 2800 4100 50  0001 C CNN "Manufacturer_No"
	1    2800 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5A2148C0
P 4450 2350
F 0 "C5" H 4460 2420 50  0000 L CNN
F 1 "1uF" H 4460 2270 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4450 2350 50  0001 C CNN
F 3 "" H 4450 2350 50  0001 C CNN
F 4 "TDK" H 4450 2350 50  0001 C CNN "Manufacturer"
F 5 "C1608X8L1C105K080AC" H 4450 2350 50  0001 C CNN "Manufacturer_No"
	1    4450 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5A214A09
P 3450 2350
F 0 "C4" H 3460 2420 50  0000 L CNN
F 1 "0.1uF" H 3460 2270 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 2350 50  0001 C CNN
F 3 "" H 3450 2350 50  0001 C CNN
F 4 "Yageo" H 3450 2350 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 3450 2350 50  0001 C CNN "Manufacturer_No"
	1    3450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5A214AB7
P 4700 2500
F 0 "#PWR012" H 4700 2250 50  0001 C CNN
F 1 "GND" H 4700 2350 50  0000 C CNN
F 2 "" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0001 C CNN
	1    4700 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A214B4F
P 3450 2500
F 0 "#PWR08" H 3450 2250 50  0001 C CNN
F 1 "GND" H 3450 2350 50  0000 C CNN
F 2 "" H 3450 2500 50  0001 C CNN
F 3 "" H 3450 2500 50  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5A635C68
P 3750 2100
F 0 "#PWR09" H 3750 1950 50  0001 C CNN
F 1 "+5V" H 3750 2240 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5A21443A
P 3050 2750
F 0 "R3" H 3080 2770 50  0000 L CNN
F 1 "10k" H 3080 2710 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3050 2750 50  0001 C CNN
F 3 "" H 3050 2750 50  0001 C CNN
F 4 "Yageo" H 3050 2750 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 3050 2750 50  0001 C CNN "Manufacturer_No"
	1    3050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5A6378F6
P 2000 3500
F 0 "Y1" H 2125 3700 50  0000 L CNN
F 1 "16MHz" H 2125 3625 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 2000 3500 50  0001 C CNN
F 3 "" H 2000 3500 50  0001 C CNN
F 4 "Abracon" H 2000 3500 50  0001 C CNN "Manufacturer"
F 5 "ABM8AIG-16.000MHz-4-T" H 2000 3500 50  0001 C CNN "Manufacturer_No"
	1    2000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3500 2300 3700
Wire Wire Line
	1700 3200 1700 3500
Wire Wire Line
	1700 4000 2000 4000
Wire Wire Line
	2000 3700 2000 3750
Wire Wire Line
	2300 4000 2300 3900
Connection ~ 2000 4000
Wire Wire Line
	3100 4800 3100 4750
Wire Wire Line
	2700 4200 2650 4200
Wire Wire Line
	2700 4100 2650 4100
Wire Wire Line
	3050 2850 3050 3100
Wire Wire Line
	2950 3100 3050 3100
Connection ~ 3050 3100
Wire Wire Line
	3450 2500 3450 2450
Wire Wire Line
	4450 2250 4450 2200
Wire Wire Line
	2300 3300 2300 3200
Wire Wire Line
	2300 3200 1700 3200
Connection ~ 1700 3500
Connection ~ 2300 3500
Wire Wire Line
	1700 4000 1700 3900
Wire Wire Line
	2150 3500 2300 3500
Wire Wire Line
	1850 3500 1700 3500
Wire Wire Line
	2000 3300 1800 3300
Wire Wire Line
	1800 3300 1800 3750
Wire Wire Line
	1800 3750 2000 3750
Connection ~ 2000 3750
Wire Wire Line
	2000 4000 2300 4000
Wire Wire Line
	2000 4000 2000 4050
Wire Wire Line
	3050 3100 3250 3100
Wire Wire Line
	1700 3500 1700 3700
Wire Wire Line
	2000 3750 2000 4000
Wire Wire Line
	2300 3300 3250 3300
Wire Wire Line
	2300 3500 3250 3500
Wire Wire Line
	2900 4100 3250 4100
Wire Wire Line
	2900 4200 3250 4200
Wire Wire Line
	3100 4400 3250 4400
Wire Wire Line
	3100 4400 3100 4550
Wire Wire Line
	3750 6400 3750 6500
$Comp
L reform2-keyboard-rescue:ATmega32U4-AU-MCU_Microchip_ATmega U1
U 1 1 5A21306C
P 3850 4600
AR Path="/5A21306C" Ref="U1"  Part="1" 
AR Path="/5A2069AE/5A21306C" Ref="U1"  Part="1" 
F 0 "U1" H 4100 2850 50  0000 C CNN
F 1 "ATMEGA32U4-AU" H 4350 2750 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 3850 4600 50  0001 C CIN
F 3 "" H 4950 5700 50  0001 C CNN
F 4 "Microchip" H 3850 4600 50  0001 C CNN "Manufacturer"
F 5 "ATMEGA32U4-AU" H 3850 4600 50  0001 C CNN "Manufacturer_No"
	1    3850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6400 3750 6400
Connection ~ 3750 6400
Wire Wire Line
	3050 2450 3050 2500
Connection ~ 3750 2200
$Comp
L power:+5V #PWR05
U 1 1 5CF326CA
P 2750 3900
F 0 "#PWR05" H 2750 3750 50  0001 C CNN
F 1 "+5V" H 2750 4040 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
Text GLabel 1450 2200 0    60   Input ~ 0
PROG
Text GLabel 4450 5200 2    60   Input ~ 0
PROG
$Comp
L Switch:SW_SPST SW83
U 1 1 5CF3DA9E
P 1800 1600
F 0 "SW83" H 1800 1835 50  0000 C CNN
F 1 "RESET" H 1800 1744 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 1800 1600 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
F 4 "C&K" H 1800 1600 50  0001 C CNN "Manufacturer"
F 5 "KMR221GLFS" H 1800 1600 50  0001 C CNN "Manufacturer_No"
	1    1800 1600
	1    0    0    -1  
$EndComp
Text GLabel 1550 1600 0    60   Input ~ 0
RESET
Wire Wire Line
	1550 1600 1600 1600
$Comp
L power:GND #PWR01
U 1 1 5CF3FA6D
P 2100 1600
F 0 "#PWR01" H 2100 1350 50  0001 C CNN
F 1 "GND" H 2100 1450 50  0000 C CNN
F 2 "" H 2100 1600 50  0001 C CNN
F 3 "" H 2100 1600 50  0001 C CNN
	1    2100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1600 2000 1600
$Comp
L Switch:SW_DIP_x01 SW84
U 1 1 5CF54073
P 1800 2200
F 0 "SW84" H 1800 2500 50  0000 C CNN
F 1 "SW_DIP_x01" H 1800 2400 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_Omron_A6S-110x_W8.9mm_P2.54mm" H 1800 2200 50  0001 C CNN
F 3 "~" H 1800 2200 50  0001 C CNN
F 4 "Apem" H 1800 2200 50  0001 C CNN "Manufacturer"
F 5 "DM01" H 1800 2200 50  0001 C CNN "Manufacturer_No"
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CF5456D
P 2200 2250
F 0 "#PWR02" H 2200 2000 50  0001 C CNN
F 1 "GND" H 2200 2100 50  0000 C CNN
F 2 "" H 2200 2250 50  0001 C CNN
F 3 "" H 2200 2250 50  0001 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2250 2200 2200
Wire Wire Line
	2200 2200 2100 2200
Wire Wire Line
	1450 2200 1500 2200
$Comp
L Device:R_Small R4
U 1 1 5CF5B5C6
P 3150 3700
F 0 "R4" H 3180 3720 50  0000 L CNN
F 1 "0" H 3180 3660 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0001 C CNN
F 4 "Vishay Dale" H 3150 3700 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 3150 3700 50  0001 C CNN "Manufacturer_No"
	1    3150 3700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5CF60438
P 8050 5650
F 0 "J2" H 8050 5950 50  0000 C CNN
F 1 "UART" H 8050 5250 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S4B-PH-SM4-TB_1x04-1MP_P2.00mm_Horizontal" H 8050 5650 50  0001 C CNN
F 3 "" H 8050 5650 50  0001 C CNN
F 4 "JST" H 8050 5650 50  0001 C CNN "Manufacturer"
F 5 "S4B-PH-SM4-TB(LF)(SN)" H 8050 5650 50  0001 C CNN "Manufacturer_No"
	1    8050 5650
	1    0    0    -1  
$EndComp
Text GLabel 7850 5650 0    60   Output ~ 0
UART_RX
Text GLabel 4450 4600 2    60   Output ~ 0
UART_TX
Text GLabel 4450 4500 2    60   Input ~ 0
UART_RX
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CFAB6F9
P 2400 7150
F 0 "H1" H 2500 7199 50  0000 L CNN
F 1 "MH1" H 2500 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 2400 7150 50  0001 C CNN
F 3 "~" H 2400 7150 50  0001 C CNN
	1    2400 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CFABDD2
P 2750 7150
F 0 "H2" H 2850 7199 50  0000 L CNN
F 1 "MH2" H 2850 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 2750 7150 50  0001 C CNN
F 3 "~" H 2750 7150 50  0001 C CNN
	1    2750 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CFAC2C0
P 3100 7150
F 0 "H3" H 3200 7199 50  0000 L CNN
F 1 "MH3" H 3200 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 3100 7150 50  0001 C CNN
F 3 "~" H 3100 7150 50  0001 C CNN
	1    3100 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CFAC2CA
P 3450 7150
F 0 "H4" H 3550 7199 50  0000 L CNN
F 1 "MH4" H 3550 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 3450 7150 50  0001 C CNN
F 3 "~" H 3450 7150 50  0001 C CNN
	1    3450 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CFB0132
P 2400 7350
F 0 "#PWR04" H 2400 7100 50  0001 C CNN
F 1 "GND" H 2400 7200 50  0000 C CNN
F 2 "" H 2400 7350 50  0001 C CNN
F 3 "" H 2400 7350 50  0001 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7350 2400 7250
Wire Wire Line
	2400 7250 2750 7250
Connection ~ 2400 7250
Connection ~ 2750 7250
Wire Wire Line
	2750 7250 3100 7250
Connection ~ 3100 7250
Wire Wire Line
	3100 7250 3450 7250
$Comp
L Mechanical:MountingHole GFX1
U 1 1 5CFBB66E
P 4750 7150
F 0 "GFX1" H 4850 7196 50  0000 L CNN
F 1 "MNT" H 4850 7105 50  0000 L CNN
F 2 "reform2-keyboard:mntreform" H 4750 7150 50  0001 C CNN
F 3 "~" H 4750 7150 50  0001 C CNN
	1    4750 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole GFX2
U 1 1 5CFBBDCD
P 5250 7150
F 0 "GFX2" H 5350 7196 50  0000 L CNN
F 1 "MNT" H 5350 7105 50  0000 L CNN
F 2 "reform2-keyboard:mntreform" H 5250 7150 50  0001 C CNN
F 3 "~" H 5250 7150 50  0001 C CNN
	1    5250 7150
	1    0    0    -1  
$EndComp
Text Label 3050 4100 0    60   ~ 0
UD+
Text Label 3050 4200 0    60   ~ 0
UD-
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5D0C1E6C
P 9350 5650
F 0 "J3" H 9350 5950 50  0000 C CNN
F 1 "AUX" H 9350 5300 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0040_1x04-1MP_P1.00mm_Horizontal" H 9350 5650 50  0001 C CNN
F 3 "" H 9350 5650 50  0001 C CNN
F 4 "Molex" H 9350 5650 50  0001 C CNN "Manufacturer"
F 5 "200528-0040" H 9350 5650 50  0001 C CNN "Manufacturer_No"
	1    9350 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5D0C1E81
P 8600 5950
F 0 "#PWR019" H 8600 5700 50  0001 C CNN
F 1 "GND" H 8600 5800 50  0000 C CNN
F 2 "" H 8600 5950 50  0001 C CNN
F 3 "" H 8600 5950 50  0001 C CNN
	1    8600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5850 9150 5850
Wire Wire Line
	3750 2100 3750 2200
Wire Wire Line
	3750 2200 3450 2200
Wire Wire Line
	3750 2200 3750 2800
Wire Wire Line
	3450 2250 3450 2200
$Comp
L power:+3V3 #PWR011
U 1 1 5DC3E3E7
P 3850 1850
F 0 "#PWR011" H 3850 1700 50  0001 C CNN
F 1 "+3V3" H 3865 2023 50  0000 C CNN
F 2 "" H 3850 1850 50  0001 C CNN
F 3 "" H 3850 1850 50  0001 C CNN
	1    3850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1850 3850 2200
Wire Wire Line
	3950 2450 3850 2450
Wire Wire Line
	3950 2450 3950 2800
Connection ~ 3850 2450
Wire Wire Line
	3850 2450 3850 2800
$Comp
L Device:C_Small C6
U 1 1 5DC43CAF
P 4700 2350
F 0 "C6" H 4710 2420 50  0000 L CNN
F 1 "0.1uF" H 4750 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4700 2350 50  0001 C CNN
F 3 "" H 4700 2350 50  0001 C CNN
F 4 "Yageo" H 4700 2350 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4700 2350 50  0001 C CNN "Manufacturer_No"
	1    4700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2500 4700 2450
Wire Wire Line
	4700 2450 4450 2450
Connection ~ 4700 2450
Wire Wire Line
	4450 2200 4700 2200
Wire Wire Line
	4700 2200 4700 2250
Connection ~ 4450 2200
Wire Wire Line
	3850 2200 4450 2200
Connection ~ 3850 2200
Wire Wire Line
	3850 2200 3850 2450
$Comp
L power:+3V3 #PWR06
U 1 1 5DC4C10B
P 3050 2450
F 0 "#PWR06" H 3050 2300 50  0001 C CNN
F 1 "+3V3" H 3065 2623 50  0000 C CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0001 C CNN
	1    3050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3900 3250 3900
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5DC538F6
P 9650 2200
F 0 "#FLG01" H 9650 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 9650 2400 50  0000 C CNN
F 2 "" H 9650 2200 50  0001 C CNN
F 3 "~" H 9650 2200 50  0001 C CNN
	1    9650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5DC5E67D
P 7350 5500
F 0 "#PWR016" H 7350 5350 50  0001 C CNN
F 1 "+3V3" H 7350 5650 50  0000 C CNN
F 2 "" H 7350 5500 50  0001 C CNN
F 3 "" H 7350 5500 50  0001 C CNN
	1    7350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5550 7650 5550
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5DC6E134
P 7650 5550
F 0 "#FLG02" H 7650 5625 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 5750 50  0000 C CNN
F 2 "" H 7650 5550 50  0001 C CNN
F 3 "~" H 7650 5550 50  0001 C CNN
	1    7650 5550
	1    0    0    -1  
$EndComp
Connection ~ 7650 5550
Wire Wire Line
	7650 5550 7850 5550
$Comp
L power:GND #PWR017
U 1 1 5DC7484C
P 7350 5950
F 0 "#PWR017" H 7350 5700 50  0001 C CNN
F 1 "GND" H 7350 5800 50  0000 C CNN
F 2 "" H 7350 5950 50  0001 C CNN
F 3 "" H 7350 5950 50  0001 C CNN
	1    7350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5950 7350 5850
Wire Wire Line
	7350 5850 7850 5850
Wire Wire Line
	7350 5500 7350 5550
Text GLabel 9150 5650 0    60   Input ~ 0
DISP_SCL
Text GLabel 9150 5750 0    60   Input ~ 0
DISP_SDA
$Comp
L power:+3V3 #PWR018
U 1 1 5DC9A968
P 8600 5500
F 0 "#PWR018" H 8600 5350 50  0001 C CNN
F 1 "+3V3" H 8500 5650 50  0000 L CNN
F 2 "" H 8600 5500 50  0001 C CNN
F 3 "" H 8600 5500 50  0001 C CNN
	1    8600 5500
	1    0    0    -1  
$EndComp
Text GLabel 4450 4300 2    60   Output ~ 0
DISP_SCL
Text GLabel 4450 4400 2    60   Output ~ 0
DISP_SDA
Text GLabel 7850 5750 0    60   Input ~ 0
UART_TX
Text GLabel 4450 3800 2    60   Output ~ 0
PWM
Text GLabel 10100 5900 0    60   Input ~ 0
DISP_SCL
Text GLabel 10100 5800 0    60   Input ~ 0
DISP_SDA
$Comp
L Device:R_Small R5
U 1 1 5DCCE912
P 10200 5700
F 0 "R5" H 10259 5746 50  0000 L CNN
F 1 "4.7k" H 10259 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10200 5700 50  0001 C CNN
F 3 "~" H 10200 5700 50  0001 C CNN
F 4 "Yageo" H 10200 5700 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 10200 5700 50  0001 C CNN "Manufacturer_No"
	1    10200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DCD0C98
P 10500 5700
F 0 "R6" H 10559 5746 50  0000 L CNN
F 1 "4.7k" H 10559 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10500 5700 50  0001 C CNN
F 3 "~" H 10500 5700 50  0001 C CNN
F 4 "Yageo" H 10500 5700 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 10500 5700 50  0001 C CNN "Manufacturer_No"
	1    10500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5800 10200 5800
Wire Wire Line
	10500 5800 10500 5900
Wire Wire Line
	10500 5900 10100 5900
$Comp
L power:+3V3 #PWR014
U 1 1 5DCD89CE
P 10200 5400
F 0 "#PWR014" H 10200 5250 50  0001 C CNN
F 1 "+3V3" H 10215 5573 50  0000 C CNN
F 2 "" H 10200 5400 50  0001 C CNN
F 3 "" H 10200 5400 50  0001 C CNN
	1    10200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5400 10200 5500
Wire Wire Line
	10200 5500 10500 5500
Wire Wire Line
	10500 5500 10500 5600
Connection ~ 10200 5500
Wire Wire Line
	10200 5500 10200 5600
Text Notes 8650 5200 0    60   ~ 0
To SSD1306
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5DC7F0C0
P 3850 7150
F 0 "H5" H 3950 7199 50  0000 L CNN
F 1 "MH5" H 3950 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 3850 7150 50  0001 C CNN
F 3 "~" H 3850 7150 50  0001 C CNN
	1    3850 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5DC7F6F1
P 4250 7150
F 0 "H6" H 4350 7199 50  0000 L CNN
F 1 "MH6" H 4350 7108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 4250 7150 50  0001 C CNN
F 3 "~" H 4250 7150 50  0001 C CNN
	1    4250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7250 3850 7250
Connection ~ 3450 7250
Connection ~ 3850 7250
Wire Wire Line
	3850 7250 3450 7250
Wire Wire Line
	2500 3700 2500 2500
Wire Wire Line
	2500 2500 3050 2500
Wire Wire Line
	2500 3700 3050 3700
Connection ~ 3050 2500
Wire Wire Line
	3050 2500 3050 2650
$Comp
L reform2-keyboard-rescue:USB_C_Receptacle_USB2.0-Connector J4
U 1 1 5E62B709
P 6400 3000
AR Path="/5E62B709" Ref="J4"  Part="1" 
AR Path="/5A2069AE/5E62B709" Ref="J4"  Part="1" 
F 0 "J4" H 6507 3867 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 6507 3776 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Amphenol_12401610E4-2A" H 6550 3000 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6550 3000 50  0001 C CNN
F 4 "12401610E4#2A" H 6400 3000 50  0001 C CNN "Manufacturer_No"
F 5 "Amphenol" H 6400 3000 50  0001 C CNN "Manufacturer"
F 6 "" H 6400 3000 50  0001 C CNN "Flags"
	1    6400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5E62C5BA
P 9200 1800
F 0 "#PWR027" H 9200 1650 50  0001 C CNN
F 1 "+5V" H 9200 1940 50  0000 C CNN
F 2 "" H 9200 1800 50  0001 C CNN
F 3 "" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4050 6400 4050
Wire Wire Line
	6400 4050 6400 3900
Wire Wire Line
	6100 4050 6100 3900
Text GLabel 7150 2900 2    60   Input ~ 0
HD-
Wire Wire Line
	7150 2900 7000 2900
Text GLabel 7150 3000 2    60   Input ~ 0
HD-
Wire Wire Line
	7150 3000 7000 3000
Text GLabel 7150 3100 2    60   Input ~ 0
HD+
Wire Wire Line
	7150 3100 7000 3100
Text GLabel 7150 3200 2    60   Input ~ 0
HD+
Wire Wire Line
	7150 3200 7000 3200
$Comp
L Device:R_Small R13
U 1 1 5E63CB6C
P 7450 2600
F 0 "R13" V 7254 2600 50  0000 C CNN
F 1 "5.1k" V 7345 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7450 2600 50  0001 C CNN
F 3 "~" H 7450 2600 50  0001 C CNN
F 4 "Panasonic" H 7450 2600 50  0001 C CNN "Manufacturer"
F 5 "ERJ-3EKF5101V" H 7450 2600 50  0001 C CNN "Manufacturer_No"
F 6 "" H 7450 2600 50  0001 C CNN "Flags"
	1    7450 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5E63CE03
P 7650 2700
F 0 "R14" V 7900 2700 50  0000 C CNN
F 1 "5.1k" V 7800 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7650 2700 50  0001 C CNN
F 3 "~" H 7650 2700 50  0001 C CNN
F 4 "Panasonic" H 7650 2700 50  0001 C CNN "Manufacturer"
F 5 "ERJ-3EKF5101V" H 7650 2700 50  0001 C CNN "Manufacturer_No"
F 6 "" H 7650 2700 50  0001 C CNN "Flags"
	1    7650 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 2600 7350 2600
Wire Wire Line
	7000 2700 7550 2700
Wire Wire Line
	7850 2700 7750 2700
Wire Wire Line
	7550 2600 7850 2600
NoConn ~ 7000 3500
NoConn ~ 7000 3600
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U3
U 1 1 5F214B98
P 6450 1300
F 0 "U3" H 6450 1542 50  0000 C CNN
F 1 "MCP1700-3302E_SOT23" H 6450 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6450 1525 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 6450 1300 50  0001 C CNN
F 4 "Microchip" H 6450 1300 50  0001 C CNN "Manufacturer"
F 5 "MCP1700T-3302E/TT" H 6450 1300 50  0001 C CNN "Manufacturer_No"
F 6 "" H 6450 1300 50  0001 C CNN "Flags"
	1    6450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F215B65
P 5900 1250
F 0 "#PWR0102" H 5900 1100 50  0001 C CNN
F 1 "+5V" H 5900 1390 50  0000 C CNN
F 2 "" H 5900 1250 50  0001 C CNN
F 3 "" H 5900 1250 50  0001 C CNN
	1    5900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1250 5900 1300
Wire Wire Line
	5900 1300 6150 1300
$Comp
L power:GND #PWR0103
U 1 1 5F2187C9
P 6450 1700
F 0 "#PWR0103" H 6450 1450 50  0001 C CNN
F 1 "GND" H 6455 1527 50  0000 C CNN
F 2 "" H 6450 1700 50  0001 C CNN
F 3 "" H 6450 1700 50  0001 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5F21B5B0
P 7000 1250
F 0 "#PWR0104" H 7000 1100 50  0001 C CNN
F 1 "+3V3" H 7015 1423 50  0000 C CNN
F 2 "" H 7000 1250 50  0001 C CNN
F 3 "" H 7000 1250 50  0001 C CNN
	1    7000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1250 7000 1300
Wire Wire Line
	7000 1300 6750 1300
$Comp
L Device:C_Small C11
U 1 1 5F2226E4
P 5900 1450
F 0 "C11" H 5910 1520 50  0000 L CNN
F 1 "1uF" H 5910 1370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5900 1450 50  0001 C CNN
F 3 "" H 5900 1450 50  0001 C CNN
F 4 "TDK" H 5900 1450 50  0001 C CNN "Manufacturer"
F 5 "C1608X8L1C105K080AC" H 5900 1450 50  0001 C CNN "Manufacturer_No"
F 6 "" H 5900 1450 50  0001 C CNN "Flags"
	1    5900 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5F223065
P 7000 1450
F 0 "C12" H 7010 1520 50  0000 L CNN
F 1 "1uF" H 7010 1370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 1450 50  0001 C CNN
F 3 "" H 7000 1450 50  0001 C CNN
F 4 "TDK" H 7000 1450 50  0001 C CNN "Manufacturer"
F 5 "C1608X8L1C105K080AC" H 7000 1450 50  0001 C CNN "Manufacturer_No"
F 6 "" H 7000 1450 50  0001 C CNN "Flags"
	1    7000 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 1350 7000 1300
Connection ~ 7000 1300
Wire Wire Line
	5900 1300 5900 1350
Connection ~ 5900 1300
Wire Wire Line
	6450 1600 6450 1650
Wire Wire Line
	6450 1650 5900 1650
Wire Wire Line
	5900 1650 5900 1550
Connection ~ 6450 1650
Wire Wire Line
	6450 1650 6450 1700
Wire Wire Line
	6450 1650 7000 1650
Wire Wire Line
	7000 1650 7000 1550
$Comp
L power:GND #PWR030
U 1 1 5F50C9D3
P 9200 3300
F 0 "#PWR030" H 9200 3050 50  0001 C CNN
F 1 "GND" H 9200 3150 50  0000 C CNN
F 2 "" H 9200 3300 50  0001 C CNN
F 3 "" H 9200 3300 50  0001 C CNN
	1    9200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3300 9200 3250
$Comp
L Power_Protection:USBLC6-2SC6 U4
U 1 1 5F51A975
P 10150 2750
F 0 "U4" H 10150 3550 50  0000 C CNN
F 1 "USBLC6-2SC6" H 10150 3450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 10150 2250 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 10350 3100 50  0001 C CNN
F 4 "STMicroelectronics" H 10150 2750 50  0001 C CNN "Manufacturer"
F 5 "USBLC6-2SC6" H 10150 2750 50  0001 C CNN "Manufacturer_No"
	1    10150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2200 10150 2350
Text GLabel 10600 2850 2    60   Input ~ 0
D-
Text GLabel 10600 2650 2    60   Input ~ 0
HD-
Text GLabel 9700 2850 0    60   Input ~ 0
D+
Text GLabel 9700 2650 0    60   Input ~ 0
HD+
Wire Wire Line
	9200 3250 10150 3250
Wire Wire Line
	10150 3250 10150 3150
Connection ~ 9200 3250
Wire Wire Line
	10600 2850 10550 2850
Wire Wire Line
	10600 2650 10550 2650
Wire Wire Line
	9750 2850 9700 2850
Wire Wire Line
	9700 2650 9750 2650
Wire Wire Line
	6400 4050 6750 4050
Connection ~ 6400 4050
Text Notes 5750 850  0    60   ~ 0
Only in standalone Keyboard
Connection ~ 9650 2200
Wire Wire Line
	5500 4650 6250 4650
Text GLabel 6250 4550 0    60   Input ~ 0
HD+
Text GLabel 6250 4450 0    60   Input ~ 0
HD-
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5A213B3D
P 6450 4450
F 0 "J1" H 6450 4700 50  0000 C CNN
F 1 "USB" H 6450 4100 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S4B-PH-SM4-TB_1x04-1MP_P2.00mm_Horizontal" H 6450 4450 50  0001 C CNN
F 3 "" H 6450 4450 50  0001 C CNN
F 4 "JST" H 6450 4450 50  0001 C CNN "Manufacturer"
F 5 "S4B-PH-SM4-TB(LF)(SN)" H 6450 4450 50  0001 C CNN "Manufacturer_No"
	1    6450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 6250 4350
Wire Wire Line
	5500 4650 5500 4950
Wire Wire Line
	5500 4950 6750 4950
Wire Wire Line
	6750 4950 6750 4050
Connection ~ 6750 4050
Wire Wire Line
	6750 4050 8100 4050
$Comp
L Device:Polyfuse_Small F1
U 1 1 5F9A5714
P 8100 2200
F 0 "F1" V 8305 2200 50  0000 C CNN
F 1 "0ZCJ0075AF2E" V 8214 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 8150 2000 50  0001 L CNN
F 3 "~" H 8100 2200 50  0001 C CNN
F 4 "Bel Fuse" H 8100 2200 50  0001 C CNN "Manufacturer"
F 5 "0ZCJ0075AF2E" H 8100 2200 50  0001 C CNN "Manufacturer_No"
	1    8100 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5F9A80D4
P 8750 2200
F 0 "FB1" V 8513 2200 50  0000 C CNN
F 1 "BLM18PG221SH1D" V 8604 2200 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 8680 2200 50  0001 C CNN
F 3 "~" H 8750 2200 50  0001 C CNN
F 4 "Murata" H 8750 2200 50  0001 C CNN "Manufacturer"
F 5 "BLM18PG221SH1D" H 8750 2200 50  0001 C CNN "Manufacturer_No"
	1    8750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2200 8650 2200
Wire Wire Line
	9650 2200 10150 2200
Wire Wire Line
	7850 2600 7850 2650
$Comp
L Device:R_Small R15
U 1 1 5F9CE0B0
P 8750 3250
F 0 "R15" H 8780 3270 50  0000 L CNN
F 1 "0" H 8780 3210 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
F 4 "Vishay Dale" H 8750 3250 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 8750 3250 50  0001 C CNN "Manufacturer_No"
	1    8750 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3250 8650 3250
Wire Wire Line
	8100 4050 8100 3250
Wire Wire Line
	7850 2650 8100 2650
Wire Wire Line
	8100 2650 8100 3250
Wire Wire Line
	8850 3250 9200 3250
Connection ~ 7850 2650
Wire Wire Line
	7850 2650 7850 2700
Connection ~ 8100 3250
$Comp
L Mechanical:MountingHole GFX3
U 1 1 5FA5BF13
P 5750 7150
F 0 "GFX3" H 5850 7196 50  0000 L CNN
F 1 "MNT" H 5850 7105 50  0000 L CNN
F 2 "reform2-keyboard:mntreform-keyboard-badge" H 5750 7150 50  0001 C CNN
F 3 "~" H 5750 7150 50  0001 C CNN
	1    5750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2200 9200 2200
Wire Wire Line
	9200 1800 9200 2200
Connection ~ 9200 2200
Wire Wire Line
	9200 2200 9650 2200
Wire Notes Line
	5700 3900 7900 3900
Wire Notes Line
	7200 2300 7200 900 
Wire Wire Line
	5500 2050 5500 4350
Wire Wire Line
	7300 2050 5500 2050
Wire Wire Line
	7300 2200 7300 2050
Connection ~ 7300 2200
Wire Wire Line
	7300 2200 7300 2400
Wire Wire Line
	7300 2200 8000 2200
Wire Wire Line
	7300 2400 7000 2400
Wire Notes Line
	7200 2300 7900 2300
Wire Notes Line
	7900 2300 7900 3900
Wire Notes Line
	7200 900  5700 900 
Wire Notes Line
	5700 900  5700 3900
$Comp
L Diode:BZT52Bxx D164
U 1 1 5F52BD36
P 9200 2750
F 0 "D164" V 9154 2830 50  0000 L CNN
F 1 "BZT52-B5V6J" V 9245 2830 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 9200 2575 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzt52b2v4.pdf" H 9200 2750 50  0001 C CNN
F 4 "Nexperia" H 9200 2750 50  0001 C CNN "Manufacturer"
F 5 "BZT52-B5V6J" H 9200 2750 50  0001 C CNN "Manufacturer_No"
	1    9200 2750
	0    -1   1    0   
$EndComp
Wire Wire Line
	9200 2200 9200 2600
Wire Wire Line
	9200 2900 9200 3250
Text Notes 7450 5200 0    60   ~ 0
To SYSCTL
Wire Wire Line
	8600 5550 8600 5500
Wire Wire Line
	8600 5550 9150 5550
Wire Wire Line
	8600 5950 8600 5850
$EndSCHEMATC
