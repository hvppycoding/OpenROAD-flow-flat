export DESIGN_NICKNAME = jpeg
export DESIGN_NAME = jpeg_encoder
export PLATFORM    = nangate45

export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export VERILOG_INCLUDE_DIRS = ./designs/src/$(DESIGN_NICKNAME)/include
export SDC_FILE = ./designs/$(PLATFORM)/jpeg_congested/constraint.sdc
export ABC_AREA = 1

export CORE_UTILIZATION ?= 45
export PLACE_DENSITY_LB_ADDON = 0.20
export TNS_END_PERCENT        = 100

# export FASTROUTE_TCL = ./designs/$(PLATFORM)/jpeg_congested/fastroute.tcl

export GLOBAL_ROUTE_ARGS=-allow_congestion -verbose

export SKIP_INCREMENTAL_REPAIR = 1

export FLOW_VARIANT = my

export USE_MY_ALGORITHM = 1