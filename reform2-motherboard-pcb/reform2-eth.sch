EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
Title "MNT Reform 2 Ethernet"
Date "2021-01-26"
Rev "2.0R-2D"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L reform2-motherboard-rescue:J0G-0003NL-reform-motherboard-rescue P1
U 1 1 5A04FC73
P 5800 3800
AR Path="/5A04FC73" Ref="P1"  Part="1" 
AR Path="/5D06A32E/5A04FC73" Ref="P1"  Part="1" 
F 0 "P1" H 4996 5961 50  0000 L BNN
F 1 "J0G-0003NL" H 4997 1491 50  0000 L BNN
F 2 "footprints:PULSE_J0G-0003NL" H 5800 3800 50  0001 L BNN
F 3 "Conn RJ-45 Integrated Magnetics F 8 POS 2.03mm Solder RA Thru-Hole 17 Terminal 1 Port" H 5800 3800 50  0001 L BNN
F 4 "Good" H 5800 3800 50  0001 L BNN "Availability"
F 5 "Pulse" H 5800 3800 50  0001 C CNN "Manufacturer"
F 6 "J0G-0003NL" H 5800 3800 50  0001 C CNN "Manufacturer_No"
F 7 "y" H 5800 3800 50  0001 C CNN "Checked"
F 8 "Mouser" H 5800 3800 50  0001 C CNN "Distributor"
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:+3V3-reform-motherboard-rescue #PWR0139
U 1 1 5A04FD4C
P 3550 4900
AR Path="/5A04FD4C" Ref="#PWR0139"  Part="1" 
AR Path="/5D06A32E/5A04FD4C" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 3550 4750 50  0001 C CNN
F 1 "+3V3" H 3550 5040 50  0000 C CNN
F 2 "" H 3550 4900 50  0001 C CNN
F 3 "" H 3550 4900 50  0001 C CNN
	1    3550 4900
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C23
U 1 1 5A05122D
P 4100 2200
AR Path="/5A05122D" Ref="C23"  Part="1" 
AR Path="/5D06A32E/5A05122D" Ref="C23"  Part="1" 
F 0 "C23" H 4110 2270 50  0000 L CNN
F 1 "0.1uF" H 4110 2120 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 2200 50  0001 C CNN
F 3 "" H 4100 2200 50  0001 C CNN
F 4 "Yageo" H 4100 2200 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4100 2200 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 2200 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 2200 50  0001 C CNN "Distributor"
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C24
U 1 1 5A051336
P 4100 3000
AR Path="/5A051336" Ref="C24"  Part="1" 
AR Path="/5D06A32E/5A051336" Ref="C24"  Part="1" 
F 0 "C24" H 4110 3070 50  0000 L CNN
F 1 "0.1uF" H 4110 2920 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 3000 50  0001 C CNN
F 3 "" H 4100 3000 50  0001 C CNN
F 4 "Yageo" H 4100 3000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4100 3000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 3000 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 3000 50  0001 C CNN "Distributor"
	1    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C25
U 1 1 5A0513CA
P 4100 3800
AR Path="/5A0513CA" Ref="C25"  Part="1" 
AR Path="/5D06A32E/5A0513CA" Ref="C25"  Part="1" 
F 0 "C25" H 4110 3870 50  0000 L CNN
F 1 "0.1uF" H 4110 3720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
F 4 "Yageo" H 4100 3800 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4100 3800 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 3800 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 3800 50  0001 C CNN "Distributor"
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0141
U 1 1 5A118EA5
P 4100 2300
AR Path="/5A118EA5" Ref="#PWR0141"  Part="1" 
AR Path="/5D06A32E/5A118EA5" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4100 2050 50  0001 C CNN
F 1 "GND" H 4100 2150 50  0000 C CNN
F 2 "" H 4100 2300 50  0001 C CNN
F 3 "" H 4100 2300 50  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0142
U 1 1 5A118FBC
P 4100 3100
AR Path="/5A118FBC" Ref="#PWR0142"  Part="1" 
AR Path="/5D06A32E/5A118FBC" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4100 2850 50  0001 C CNN
F 1 "GND" H 4100 2950 50  0000 C CNN
F 2 "" H 4100 3100 50  0001 C CNN
F 3 "" H 4100 3100 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0143
U 1 1 5A119060
P 4100 3900
AR Path="/5A119060" Ref="#PWR0143"  Part="1" 
AR Path="/5D06A32E/5A119060" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 4100 3650 50  0001 C CNN
F 1 "GND" H 4100 3750 50  0000 C CNN
F 2 "" H 4100 3900 50  0001 C CNN
F 3 "" H 4100 3900 50  0001 C CNN
	1    4100 3900
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0145
U 1 1 5A119D9C
P 6900 5700
AR Path="/5A119D9C" Ref="#PWR0145"  Part="1" 
AR Path="/5D06A32E/5A119D9C" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 6900 5450 50  0001 C CNN
F 1 "GND" H 6900 5550 50  0000 C CNN
F 2 "" H 6900 5700 50  0001 C CNN
F 3 "" H 6900 5700 50  0001 C CNN
	1    6900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4900 3550 5000
Wire Wire Line
	3550 5600 4800 5600
Connection ~ 3550 5000
Wire Wire Line
	4100 2100 4800 2100
Wire Wire Line
	4100 3700 4800 3700
Wire Wire Line
	4800 2900 4100 2900
Wire Wire Line
	6900 5700 6900 5600
Wire Wire Line
	6900 5600 6800 5600
Wire Wire Line
	3550 5000 4800 5000
Wire Wire Line
	3550 5000 3550 5600
Text GLabel 4550 5800 0    60   Input ~ 0
ETH0_LED_LINK1
Text GLabel 4550 5200 0    60   Input ~ 0
ETH0_LED_RX
Text GLabel 4800 2400 0    60   Output ~ 0
ETH0_D-
Text GLabel 4800 1800 0    60   Output ~ 0
ETH0_D+
Text GLabel 4800 3200 0    60   Output ~ 0
ETH0_C-
Text GLabel 4800 2600 0    60   Output ~ 0
ETH0_C+
Text GLabel 4800 4000 0    60   Output ~ 0
ETH0_B-
Text GLabel 4800 3400 0    60   Output ~ 0
ETH0_B+
Text GLabel 4800 4800 0    60   Output ~ 0
ETH0_A-
Text GLabel 4800 4200 0    60   Output ~ 0
ETH0_A+
Text GLabel 4550 5400 0    60   Input ~ 0
ETH0_LED_LINK2
Wire Wire Line
	3300 5050 3300 5000
Wire Wire Line
	3300 5000 3550 5000
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0140
U 1 1 5A04FDB4
P 3300 5250
AR Path="/5A04FDB4" Ref="#PWR0140"  Part="1" 
AR Path="/5D06A32E/5A04FDB4" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 3300 5000 50  0001 C CNN
F 1 "GND" H 3300 5100 50  0000 C CNN
F 2 "" H 3300 5250 50  0001 C CNN
F 3 "" H 3300 5250 50  0001 C CNN
	1    3300 5250
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C22
U 1 1 5A04FD85
P 3300 5150
AR Path="/5A04FD85" Ref="C22"  Part="1" 
AR Path="/5D06A32E/5A04FD85" Ref="C22"  Part="1" 
F 0 "C22" H 3310 5220 50  0000 L CNN
F 1 "0.1uF" H 3310 5070 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3300 5150 50  0001 C CNN
F 3 "" H 3300 5150 50  0001 C CNN
F 4 "Yageo" H 3300 5150 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 3300 5150 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 3300 5150 50  0001 C CNN "Checked"
F 7 "Mouser" H 3300 5150 50  0001 C CNN "Distributor"
	1    3300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4100 4500
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0144
U 1 1 5A119104
P 4100 4700
AR Path="/5A119104" Ref="#PWR0144"  Part="1" 
AR Path="/5D06A32E/5A119104" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 4100 4450 50  0001 C CNN
F 1 "GND" H 4100 4550 50  0000 C CNN
F 2 "" H 4100 4700 50  0001 C CNN
F 3 "" H 4100 4700 50  0001 C CNN
	1    4100 4700
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C26
U 1 1 5A05141B
P 4100 4600
AR Path="/5A05141B" Ref="C26"  Part="1" 
AR Path="/5D06A32E/5A05141B" Ref="C26"  Part="1" 
F 0 "C26" H 4110 4670 50  0000 L CNN
F 1 "0.1uF" H 4110 4520 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
F 4 "Yageo" H 4100 4600 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4100 4600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4100 4600 50  0001 C CNN "Checked"
F 7 "Mouser" H 4100 4600 50  0001 C CNN "Distributor"
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R116
U 1 1 5D3F4205
P 4700 5200
F 0 "R116" V 4600 5200 50  0000 C CNN
F 1 "0" V 4700 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 5200 50  0001 C CNN
F 3 "~" H 4700 5200 50  0001 C CNN
F 4 "Vishay Dale" H 4700 5200 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4700 5200 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4700 5200 50  0001 C CNN "Distributor"
F 7 "y" H 4700 5200 50  0001 C CNN "Checked"
	1    4700 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R146
U 1 1 5D3F4A40
P 4700 5400
F 0 "R146" V 4600 5400 50  0000 C CNN
F 1 "0" V 4700 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 5400 50  0001 C CNN
F 3 "~" H 4700 5400 50  0001 C CNN
F 4 "Vishay Dale" H 4700 5400 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4700 5400 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4700 5400 50  0001 C CNN "Distributor"
F 7 "y" H 4700 5400 50  0001 C CNN "Checked"
	1    4700 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R147
U 1 1 5D3F5686
P 4700 5800
F 0 "R147" V 4600 5800 50  0000 C CNN
F 1 "0" V 4700 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 5800 50  0001 C CNN
F 3 "~" H 4700 5800 50  0001 C CNN
F 4 "Vishay Dale" H 4700 5800 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4700 5800 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4700 5800 50  0001 C CNN "Distributor"
F 7 "y" H 4700 5800 50  0001 C CNN "Checked"
	1    4700 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5800 4600 5800
Wire Wire Line
	4550 5400 4600 5400
Wire Wire Line
	4550 5200 4600 5200
Text Notes 5000 6250 0    50   ~ 0
Equiv: TE 1-2301994-1
Text Notes 5000 1500 0    50   ~ 0
Gigabit Ethernet Port
$EndSCHEMATC
