# gcd_nangate45 IO placement
source "helpers.tcl"
read_lef Nangate45/Nangate45.lef
read_def gcd.def

set_io_pin_constraint -direction INPUT -region right:*
set_io_pin_constraint -direction OUTPUT -region left:*
set_io_pin_constraint -pin_names {resp_val resp_rdy req_rdy req_val} -region bottom:*
set_io_pin_constraint -pin_names {req_msg[15] req_msg[14] resp_msg[15] resp_msg[14]} -region top:*
catch {place_pins -hor_layers metal3 -ver_layers metal2 -corner_avoidance 0 -min_distance 0.12} error
puts $error
