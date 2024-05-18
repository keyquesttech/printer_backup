; *** FlowTestGenerator.js (v0.4.6) by iFallUpHill
; *** https://github.com/iFallUpHill/flow-calculator
; *** Based on CNCKitchen's ExtrusionSystemBenchmark by Stefan Hermann
; *** https://github.com/CNCKitchen/ExtrusionSystemBenchmark

;####### Settings
; bedWidth = 200
; bedLength = 181
; bedMargin = 15
; safeZPark = 10
; filamentDiameter = 1.75
; travelSpeed = 100
; dwellTime = 20
; bedTemp = 65
; fanSpeed = 0
; primeLength = 10
; primeAmount = 10
; primeSpeed = 5
; wipeLength = 15
; retractionDistance = 0.5
; retractionSpeed = 35
; blobHeight = 10
; extrusionAmount = 200
; direction = 1
; flowSpacing = 50
; tempSpacing = 38
; flowStart = 4
; flowOffset = 3
; flowSteps = 12
; flowEnd = 37
; tempStart = 220
; tempOffset = 0
; tempSteps = 1
; tempEnd = 220

;####### Start Gcode
M190 S0 ; Prevents prusaslicer from prepending m190 to the gcode interfering with the macro
M109 S0 ; Prevents prusaslicer from prepending m109 to the gcode interfering with the macro
SET_GCODE_VARIABLE MACRO=RatOS VARIABLE=relative_extrusion VALUE=True
START_PRINT EXTRUDER_TEMP=220 BED_TEMP=65

; [SAFETY] Force Relative Extrusion
M83 ; set extruder to relative mode

;####### 220°C
G4 S0; Dwell
M109 S220

;####### 220°C // 4mm3/s
M117 220C // 4mm3/s
G0 X15 Y15 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X25 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X40 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F4.99 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X15 Y15 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 7mm3/s
M117 220C // 7mm3/s
G0 X15 Y65 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X25 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X40 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F8.73 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X15 Y65 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 10mm3/s
M117 220C // 10mm3/s
G0 X15 Y115 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X25 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X40 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F12.47 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X15 Y115 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 13mm3/s
M117 220C // 13mm3/s
G0 X15 Y165 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X25 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X40 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F16.21 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X15 Y165 F6000
G92 E0 ; Reset Extruder

;####### 220°C
G4 S0; Dwell
M109 S220

;####### 220°C // 16mm3/s
M117 220C // 16mm3/s
G0 X78 Y15 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X88 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X103 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F19.96 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X78 Y15 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 19mm3/s
M117 220C // 19mm3/s
G0 X78 Y65 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X88 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X103 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F23.7 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X78 Y65 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 22mm3/s
M117 220C // 22mm3/s
G0 X78 Y115 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X88 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X103 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F27.44 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X78 Y115 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 25mm3/s
M117 220C // 25mm3/s
G0 X78 Y165 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X88 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X103 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F31.18 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X78 Y165 F6000
G92 E0 ; Reset Extruder

;####### 220°C
G4 S0; Dwell
M109 S220

;####### 220°C // 28mm3/s
M117 220C // 28mm3/s
G0 X141 Y15 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X151 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X166 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F34.92 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X141 Y15 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 31mm3/s
M117 220C // 31mm3/s
G0 X141 Y65 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X151 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X166 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F38.66 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X141 Y65 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 34mm3/s
M117 220C // 34mm3/s
G0 X141 Y115 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X151 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X166 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F42.41 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X141 Y115 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 37mm3/s
M117 220C // 37mm3/s
G0 X141 Y165 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X151 E10 F300 ; Prime
G1 E-0.5 F2100 ; Retract
G0 X166 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.5 F2100 ; Undo Retract
G1 Z10.5 E200 F46.15 ; Extrude
G1 E-0.5 F2100 ; Retract
G0 Z15.5; Lift
G0 X141 Y165 F6000
G92 E0 ; Reset Extruder

;####### End Gcode
; total layers count = [total_layer_count]
END_PRINT