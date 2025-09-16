# RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL
created by [Kittiphop Phanthachart](https://bento.me/mac-kittiphop) (a 4th-year Engineering student, FPGA/DSP Engineer Intern @Thai Space Consortium, NARIT.)

Date :  16 September 2025



##  Documentation 

Presentation File : [RISC CPU Design of a Single Cycle MIPS Softcore Processor in Verilog HDL.pdf
](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore%20Processor%20in%20Verilog%20HDL.pdf)

Verilog file : [ MIPS_Processor | folder](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/tree/main/MIPS_Processor)

### Command for simulation on terminal

```
# Step 1: Compile Verilog files
iverilog -g2005 -o sim.vvp -s testbench *.v

# Step 2: Run simulation
vvp sim.vvp

# Step 3: View waveform in GTKWave
gtkwave sim.vcd
```
----
# Self-Introduction

[![2](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/2.png
)](https://bento.me/mac-kittiphop)

----

## Description

This project involves the design and implementation of a Single-Cycle MIPS Softcore Processor using Verilog HDL. The processor was developed with a RISC CPU architecture and verified through functional simulation using Icarus Verilog (iverilog). The simulation results were visualized with GTKWave, an open-source waveform viewer, to analyze signal transitions and verify processor behavior. The design demonstrates the fundamental principles of instruction execution, datapath, and control unit integration in FPGA-based processor design.
----

## Presentation


![1](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/1.png)
![3](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/3.png)
![4](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/4.png)
![5](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/5.png)
![6](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/6.png)
![7](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/7.png)
![8](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/8.png)
![9](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/9.png)
![10](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/10.png)
![11](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/11.png)
![12](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/12.png)
![13](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/13.png)
![14](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/14.png)
![15](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/15.png)
![16](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/16.png)
![17](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/17.png)
![18](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/18.png)
![19](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/19.png)
![20](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/20.png)
![21](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/21.png)
![22](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/22.png)
![23](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/23.png)
![24](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/24.png)
![25](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/25.png)
![26](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/26.png)
![27](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/27.png)
![28](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/28.png)
![29](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/29.png)
![30](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/30.png)
![31](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/31.png)
![32](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/32.png)
![33](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/33.png)
![34](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/34.png)
![35](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/35.png)
![36](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/36.png)
![37](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/37.png)
![38](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/38.png)
![39](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/39.png)
![40](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/40.png)
![41](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/41.png)
![42](https://github.com/XACKIES/RISC-CPU-Design-of-a-Single-Cycle-MIPS-Softcore-Processor-in-Verilog-HDL/blob/main/Doc/RISC%20CPU%20Design%20of%20a%20Single%20Cycle%20MIPS%20Softcore-Processor%20in%20Verilog-HDL%20-%20Picture/42.png)

