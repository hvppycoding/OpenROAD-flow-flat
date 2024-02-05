export DESIGN_NAME = gcd
export DESIGN_NICKNAME = gcd_congested
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/gcd.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc
export ABC_AREA      = 1

# Adders degrade GCD
export ADDER_MAP_FILE :=

export CORE_UTILIZATION ?= 55
export PLACE_DENSITY_LB_ADDON = 0.20
export TNS_END_PERCENT        = 100
export REMOVE_CELLS_FOR_EQY   = TAPCELL*

export FASTROUTE_TCL = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/fastroute.tcl

export GLOBAL_ROUTE_ARGS=-allow_congestion -verbose

export SKIP_INCREMENTAL_REPAIR = 1

export FLOW_VARIANT = my

export USE_MY_ALGORITHM = 1