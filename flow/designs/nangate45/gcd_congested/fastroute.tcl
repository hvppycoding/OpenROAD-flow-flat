set_global_routing_layer_adjustment metal2-metal3 0.6
set_global_routing_layer_adjustment metal4-$::env(MAX_ROUTING_LAYER) 1.0

set_routing_layers -signal $::env(MIN_ROUTING_LAYER)-$::env(MAX_ROUTING_LAYER)