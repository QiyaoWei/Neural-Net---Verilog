#Simulation file, used in Modelsim

vlib work
vlog top_neuron.v
vsim -L altera_mf_ver top_neuron
log {/*}
add wave {/*}

#force {x} 100'd1
#force {x1} 10'b1000000000
#force {x2} 10'b0000000000
#force {x3} 10'b1000000001
#force {x4} 10'b1000000100
#force {x5} 10'b0100000000
#force {x6} 10'b1000010000
#force {x7} 10'b1000010000
#force {x8} 10'b1000000000
#force {x9} 10'b0111111111
#force {x10} 10'b1111111111
##force {m} 10'd0
##force {y} 10'd1
#run 10ps
#force {d} 28'd10
#force {x} 28'd6
#force {y} 28'd10
#run 10ps
force {CLOCK_50} 0 0ps, 1 5ps -r 10ps

force {reset_h} 1
#force {start} 0
#force {one_image} 784'd100
#force {random_weight_matrix} 28'd2000
#force {random_bias_matrix} 140'd2000
#force {expected_matrix} 10'b0100000000
#force {multiply_by_weights} 1
#force {add_with_bias} 0
#force {activation_function} 0
#force {derivatives} 0
#force {deltas} 0
#force {update_weights} 0
#force {update_bias} 0
run 10ps

force {reset_h} 0
#force {start} 1
#force {one_image} 784'd100
#force {random_weight_matrix} 28'd2000
#force {random_bias_matrix} 140'd2000
#force {expected_matrix} 10'd0100000000
#force {multiply_by_weights} 0
#force {add_with_bias} 1
#force {activation_function} 0
#force {derivatives} 0
#force {deltas} 0
#force {update_weights} 0
#force {update_bias} 0
run 200000ps
