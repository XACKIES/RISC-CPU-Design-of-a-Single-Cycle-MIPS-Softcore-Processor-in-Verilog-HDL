module testbench;

  reg clk;
  reg reset;

  wire [31:0] writedata, dataadr;
  wire memwrite;

  // =========== Device   Under Test ===========
  top dut (
      .clk(clk),
      .reset(reset),
      .writedata(writedata),
      .dataadr(dataadr),
      .memwrite(memwrite)
  );

  // =========== Waveform dump (GTKWave) ===========
  initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0, testbench);
    $dumpvars(0, dut);  // dump DUT internals for easier debug
  end

  // =========== Reset/Clock ===========
  initial begin
    clk   = 1'b0;
    reset = 1'b1;  // assert reset
    #22;
    reset = 1'b0;  // deassert reset
  end

  // Generate a 10 ns clock period (100 MHz)
  always #5 clk = ~clk;

  // =========== Helper tasks ===========
  // Print Register File (32 registers in 4 rows)
  task automatic print_regfile;
    begin
      $display("==== Register File ====");
      $display("r00=%h r01=%h r02=%h r03=%h r04=%h r05=%h r06=%h r07=%h", dut.mips.dp.rf.rf[0],
               dut.mips.dp.rf.rf[1], dut.mips.dp.rf.rf[2], dut.mips.dp.rf.rf[3],
               dut.mips.dp.rf.rf[4], dut.mips.dp.rf.rf[5], dut.mips.dp.rf.rf[6],
               dut.mips.dp.rf.rf[7]);
      $display("r08=%h r09=%h r10=%h r11=%h r12=%h r13=%h r14=%h r15=%h", dut.mips.dp.rf.rf[8],
               dut.mips.dp.rf.rf[9], dut.mips.dp.rf.rf[10], dut.mips.dp.rf.rf[11],
               dut.mips.dp.rf.rf[12], dut.mips.dp.rf.rf[13], dut.mips.dp.rf.rf[14],
               dut.mips.dp.rf.rf[15]);
      $display("r16=%h r17=%h r18=%h r19=%h r20=%h r21=%h r22=%h r23=%h", dut.mips.dp.rf.rf[16],
               dut.mips.dp.rf.rf[17], dut.mips.dp.rf.rf[18], dut.mips.dp.rf.rf[19],
               dut.mips.dp.rf.rf[20], dut.mips.dp.rf.rf[21], dut.mips.dp.rf.rf[22],
               dut.mips.dp.rf.rf[23]);
      $display("r24=%h r25=%h r26=%h r27=%h r28=%h r29=%h r30=%h r31=%h", dut.mips.dp.rf.rf[24],
               dut.mips.dp.rf.rf[25], dut.mips.dp.rf.rf[26], dut.mips.dp.rf.rf[27],
               dut.mips.dp.rf.rf[28], dut.mips.dp.rf.rf[29], dut.mips.dp.rf.rf[30],
               dut.mips.dp.rf.rf[31]);
    end
  endtask

  // Print Data Memory (64 words in 8-word rows)
  task automatic print_dmem_table;
    integer i;
    begin
      $display("==== Data Memory (word-aligned, 64 words) ====");
      for (i = 0; i < 64; i = i + 8) begin
        $display(
            "RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h RAM[%02d]=%h",
            i, dut.dmem.RAM[i], i + 1, dut.dmem.RAM[i+1], i + 2, dut.dmem.RAM[i+2], i + 3,
            dut.dmem.RAM[i+3], i + 4, dut.dmem.RAM[i+4], i + 5, dut.dmem.RAM[i+5], i + 6,
            dut.dmem.RAM[i+6], i + 7, dut.dmem.RAM[i+7]);
      end
    end
  endtask
  // =========== Checker + Timeout ===========
  wire [31:0] word_index = dataadr[31:2];  // convert byte addr to word index
  integer cycles;

  initial cycles = 0;
  always @(posedge clk) cycles <= cycles + 1;

  // Timeout to avoid infinite simulation
  always @(posedge clk) begin
    if (cycles > 1000) begin
      $display("    ");
      $display("TIMEOUT: cycles=%0d; ", cycles);
      $display("    ");
      $finish;
    end
  end
  // Monitor memory writes and check pass/fail
  always @(negedge clk) begin
    if (memwrite) begin
      // Log memory write event
      $display("    ");
      $display(" ---------------  Log memory write event ---------------");
      $display(
          "T=%0t ns : PC=0x%08h INSTR=0x%08h | memwrite addr=%0d (0x%08h) -> RAM[%0d] = %0d (0x%08h)",
          $time, dut.pc, dut.instr, dataadr, dataadr, word_index, writedata, writedata);
      $display("    ");
      // Check success condition
      if ((dataadr == 32'd84) && (writedata == 32'd7)) begin
        $display(
            "====================== Simulation succeeded : dataadr=84 -> RAM[%0d]=7 ======================",
            word_index);
        @(posedge clk);
        #1;  // small delay to allow memory update
        print_regfile();
        print_dmem_table();
        $finish;
      end  // Fail if unexpected address (except addr=80 which is an intermediate write)
      else if (dataadr !== 32'd80) begin
        $display("Simulation failed at T=%0t ns : unexpected write to addr=%0d data=%0d", $time,
                 dataadr, writedata);
        $finish;
      end
    end
  end
endmodule

// Compile & run:
// iverilog -g2005 -o sim.vvp -s testbench *.v
// vvp sim.vvp
// gtkwave sim.vcd
// 20020005
// 2003000c
// 2067fff7
// 00e22025
// 00642824
// 00a42820
// 10a7000a
// 0064202a
// 10800001
// 20050000
// 00e2202a
// 00853820
// 00e23822
// ac670044
// 8c020050
// 08000011
// 20020001
// ac020054
