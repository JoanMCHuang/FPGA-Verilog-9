# compile

vlog EX_9.v
vlog EX_9_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/a
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/b
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/c
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/d
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/e
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/f
add wave -noupdate -format -logic	       /testbench/EX9_instance/sel1
add wave -noupdate -format -logic	       /testbench/EX9_instance/sel2
add wave -noupdate -format -logic	       /testbench/EX9_instance/sel3
add wave -noupdate -format -logic	       /testbench/EX9_instance/sel4
add wave -noupdate -format -logic	       /testbench/EX9_instance/sel5
add wave -noupdate -format -literal -radix hex /testbench/EX9_instance/g

# 250 ns
run 250
