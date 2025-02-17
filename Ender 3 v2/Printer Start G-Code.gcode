; Ender 3 Custom Start G-code
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M104 S160 ; Start warming extruder to 160 (initial warm-up)
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
G28 ; Home all axes
G29 ; Auto bed-level (BL-Touch)
M104 S{material_print_temperature_layer_0} ; Set final extruder temperature
M109 S{material_print_temperature_layer_0} ; Wait for extruder temperature
G92 E0 ; Reset Extruder
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
; G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; End of custom start GCode
