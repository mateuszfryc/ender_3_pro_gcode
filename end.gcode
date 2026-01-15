G4                           ; Wait
M220 S100                    ; Reset Speed factor override percentage to default (100%)
M221 S100                    ; Reset Extrude factor override percentage to default (100%)
G91                          ; Set coordinates to relative
G1 F1800 E-3                 ; Retract filament 3 mm to prevent oozing
G1 F3000 Z20                 ; Move Z Axis up 20 mm to allow filament ooze freely
G90                          ; Set coordinates to absolute
G1 X0 Y{machine_depth} F1000 ; Move Heat Bed to the front for easy print removal
G1 X10 F1000                 ; Move nozzle to a safe corner
M106 S0                      ; Turn off cooling fan
M104 S0                      ; Turn off extruder
M140 S0                      ; Turn off bed
G4 S60                       ; Wait for 60 seconds to let the hotend and bed cool down a bit
M107                         ; Turn off Fan
M84                          ; Disable stepper motors
M117 Done!                   ; End of custom end GCode
