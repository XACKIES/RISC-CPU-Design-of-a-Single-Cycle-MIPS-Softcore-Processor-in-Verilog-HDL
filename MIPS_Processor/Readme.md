# Command for simulation on terminal


Step 1 :  iverilog -g2005 -o sim.vvp -s testbench *.v


Step 2 :  vvp sim.vvp


Step 3 : gtkwave sim.vcd
