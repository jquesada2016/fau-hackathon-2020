EESchema Schematic File Version 4
LIBS:PCB Design-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC137 U?
U 1 1 5E49EB9C
P 2350 4150
AR Path="/5E4A058C/5E49EB9C" Ref="U?"  Part="1" 
AR Path="/5E4A0240/5E49EB9C" Ref="U1"  Part="1" 
F 0 "U1" H 2350 4931 50  0000 C CNN
F 1 "74HC137" H 2350 4840 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2350 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc237.pdf" H 2350 4150 50  0001 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U?
U 1 1 5E49EBA2
P 7100 4250
AR Path="/5E4A058C/5E49EBA2" Ref="U?"  Part="1" 
AR Path="/5E4A0240/5E49EBA2" Ref="U3"  Part="1" 
F 0 "U3" H 7100 5331 50  0000 C CNN
F 1 "74LS151" H 7100 5240 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7100 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7100 4250 50  0001 C CNN
	1    7100 4250
	1    0    0    -1  
$EndComp
Text Label 2250 1500 2    50   ~ 0
+5V
Text Label 2250 1600 2    50   ~ 0
GND
Text Label 6350 1800 1    50   ~ 0
GND
Text Label 6250 1800 1    50   ~ 0
+5V
Text Label 6550 1800 1    50   ~ 0
displaySDA
Text Label 6450 1800 1    50   ~ 0
displayCLA
Text Label 2250 1700 2    50   ~ 0
displayCLA
Text Label 2250 1800 2    50   ~ 0
displaySDA
Text Label 2250 1900 2    50   ~ 0
selectA0
Text Label 2250 2000 2    50   ~ 0
selectA1
Text Label 2250 2100 2    50   ~ 0
selectA2
Text Label 6600 4550 2    50   ~ 0
selectA0
Text Label 6600 4650 2    50   ~ 0
selectA1
Text Label 6600 4750 2    50   ~ 0
selectA2
Wire Wire Line
	6350 3650 6600 3650
Wire Wire Line
	6350 3750 6600 3750
Wire Wire Line
	6350 3850 6600 3850
Wire Wire Line
	6350 3950 6600 3950
Wire Wire Line
	6350 4050 6600 4050
Wire Wire Line
	6350 4150 6600 4150
Wire Wire Line
	6350 4250 6600 4250
Wire Wire Line
	6350 4350 6600 4350
Text Notes 6100 3050 0    79   ~ 0
Signals recieved from\nECHO pin on HC-SR04
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5E49EBC8
P 3750 1700
AR Path="/5E4A058C/5E49EBC8" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EBC8" Ref="J3"  Part="1" 
F 0 "J3" H 3830 1742 50  0000 L CNN
F 1 "Conn_01x01" H 3830 1651 50  0000 L CNN
F 2 "PCB Design:conn_01x01" H 3750 1700 50  0001 C CNN
F 3 "~" H 3750 1700 50  0001 C CNN
	1    3750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1700 3550 1700
Text Notes 4300 1800 0    79   ~ 0
Signal recieved from\nDHT11
Text Label 3050 1600 0    50   ~ 0
echoSignal
Text Label 7600 3650 0    50   ~ 0
echoSignal
NoConn ~ 7600 3750
NoConn ~ 3050 1900
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E49EBD6
P 3750 2000
AR Path="/5E4A058C/5E49EBD6" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EBD6" Ref="J4"  Part="1" 
F 0 "J4" H 3830 1992 50  0000 L CNN
F 1 "Conn_01x02" H 3830 1901 50  0000 L CNN
F 2 "PCB Design:conn_01x02" H 3750 2000 50  0001 C CNN
F 3 "~" H 3750 2000 50  0001 C CNN
	1    3750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2000 3050 2000
Wire Wire Line
	3550 2100 3050 2100
Text Label 2250 2200 2    50   ~ 0
enable
Text Label 1950 4450 2    50   ~ 0
enable
Text Label 1950 3750 2    50   ~ 0
selectA0
Text Label 1950 3850 2    50   ~ 0
selectA1
Text Label 1950 3950 2    50   ~ 0
selectA2
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5E49EBEB
P 6150 3950
AR Path="/5E4A058C/5E49EBEB" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EBEB" Ref="J5"  Part="1" 
F 0 "J5" H 6068 4467 50  0000 C CNN
F 1 "Conn_01x08" H 6068 4376 50  0000 C CNN
F 2 "PCB Design:conn_01x08" H 6150 3950 50  0001 C CNN
F 3 "~" H 6150 3950 50  0001 C CNN
	1    6150 3950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5E49EBF1
P 3750 1500
AR Path="/5E4A058C/5E49EBF1" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EBF1" Ref="J2"  Part="1" 
F 0 "J2" H 3830 1542 50  0000 L CNN
F 1 "Conn_01x01" H 3830 1451 50  0000 L CNN
F 2 "PCB Design:conn_01x01" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1500 3550 1500
$Comp
L Project_Symbols:ESP32-CAM U?
U 1 1 5E49EBF8
P 2650 1850
AR Path="/5E4A058C/5E49EBF8" Ref="U?"  Part="1" 
AR Path="/5E4A0240/5E49EBF8" Ref="U2"  Part="1" 
F 0 "U2" H 2650 2465 50  0000 C CNN
F 1 "ESP32-CAM" H 2650 2374 50  0000 C CNN
F 2 "PCB Design:ESP32CAM" H 2600 1700 50  0001 C CNN
F 3 "" H 2600 1700 50  0001 C CNN
	1    2650 1850
	1    0    0    -1  
$EndComp
Text Label 2350 4650 0    50   ~ 0
GND
Text Label 2350 3550 0    50   ~ 0
+5V
Text Label 7100 3350 0    50   ~ 0
+5V
Text Label 7100 5250 0    50   ~ 0
GND
Text Label 1950 4150 2    50   ~ 0
GND
Text Label 3250 1500 0    50   ~ 0
+3V3
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E49EC04
P 6350 2000
AR Path="/5E4A058C/5E49EC04" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EC04" Ref="J6"  Part="1" 
F 0 "J6" V 6222 1712 50  0000 R CNN
F 1 "Conn_01x04" V 6313 1712 50  0000 R CNN
F 2 "PCB Design:conn_01x04" H 6350 2000 50  0001 C CNN
F 3 "~" H 6350 2000 50  0001 C CNN
	1    6350 2000
	0    -1   1    0   
$EndComp
$Comp
L Project_Symbols:74LS04 U5
U 1 1 5E4B319B
P 2850 5400
F 0 "U5" H 2850 5925 50  0000 C CNN
F 1 "74LS04" H 2850 5834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2750 5500 50  0001 C CNN
F 3 "" H 2750 5500 50  0001 C CNN
	1    2850 5400
	1    0    0    -1  
$EndComp
$Comp
L Project_Symbols:74LS04 U6
U 1 1 5E4B445C
P 4650 5400
F 0 "U6" H 4650 5925 50  0000 C CNN
F 1 "74LS04" H 4650 5834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4550 5500 50  0001 C CNN
F 3 "" H 4550 5500 50  0001 C CNN
	1    4650 5400
	1    0    0    -1  
$EndComp
Text Notes 3050 3600 0    79   ~ 0
Signals to be sent to\nTRIG pin on HC-SR04
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5E49EBE5
P 4300 4050
AR Path="/5E4A058C/5E49EBE5" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E49EBE5" Ref="J1"  Part="1" 
F 0 "J1" H 4380 4042 50  0000 L CNN
F 1 "Conn_01x08" H 4380 3951 50  0000 L CNN
F 2 "PCB Design:conn_01x08" H 4300 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Text Label 2750 3750 0    50   ~ 0
~Y0
Text Label 2750 3950 0    50   ~ 0
~Y2
Text Label 2750 4050 0    50   ~ 0
~Y3
Text Label 2750 4150 0    50   ~ 0
~Y4
Text Label 2750 4250 0    50   ~ 0
~Y5
Text Label 2750 4350 0    50   ~ 0
~Y6
Text Label 2750 4450 0    50   ~ 0
~Y7
Text Label 2500 5100 2    50   ~ 0
~Y0
Text Label 2500 5300 2    50   ~ 0
~Y1
Text Label 2500 5500 2    50   ~ 0
~Y2
Text Label 3200 5600 0    50   ~ 0
~Y3
Text Label 3200 5400 0    50   ~ 0
~Y4
Text Label 3200 5200 0    50   ~ 0
~Y5
Text Label 4300 5100 2    50   ~ 0
~Y6
Text Label 4300 5300 2    50   ~ 0
~Y7
Text Label 4100 3750 2    50   ~ 0
Y0
Text Label 4100 3850 2    50   ~ 0
Y1
Text Label 4100 3950 2    50   ~ 0
Y2
Text Label 4100 4050 2    50   ~ 0
Y3
Text Label 4100 4150 2    50   ~ 0
Y4
Text Label 4100 4250 2    50   ~ 0
Y5
Text Label 4100 4350 2    50   ~ 0
Y6
Text Label 4100 4450 2    50   ~ 0
Y7
Text Label 2500 5200 2    50   ~ 0
Y0
Text Label 2500 5400 2    50   ~ 0
Y1
Text Label 2500 5600 2    50   ~ 0
Y2
Text Label 3200 5700 0    50   ~ 0
Y3
Text Label 3200 5500 0    50   ~ 0
Y4
Text Label 3200 5300 0    50   ~ 0
Y5
Text Label 4300 5200 2    50   ~ 0
Y6
Text Label 4300 5400 2    50   ~ 0
Y7
Text Label 2750 3850 0    50   ~ 0
~Y1
NoConn ~ 4300 5500
NoConn ~ 4300 5600
NoConn ~ 5000 5700
NoConn ~ 5000 5500
NoConn ~ 5000 5400
NoConn ~ 5000 5300
NoConn ~ 5000 5200
NoConn ~ 5000 5600
Text Label 2500 5700 2    50   ~ 0
GND
Text Label 3200 5100 0    50   ~ 0
+5V
Text Label 5000 5100 0    50   ~ 0
+5V
Text Label 4300 5700 2    50   ~ 0
GND
Wire Wire Line
	6600 4950 6600 5250
Wire Wire Line
	6600 5250 7100 5250
Text Label 3050 2200 0    50   ~ 0
GND
Text Label 3050 1800 0    50   ~ 0
GND
Text Label 1950 4350 2    50   ~ 0
GND
$EndSCHEMATC
