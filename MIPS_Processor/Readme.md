# Command for simulation on terminal

```bash
# Step 1: Compile Verilog files
iverilog -g2005 -o sim.vvp -s testbench *.v

# Step 2: Run simulation
vvp sim.vvp

# Step 3: View waveform in GTKWave
gtkwave sim.vcd
