module top (
    input         clk,
    reset,
    output [31:0] writedata,
    dataadr,
    output        memwrite
);

  wire [31:0] pc, instr, readdata;


  MIPS mips (
      clk,
      reset,
      pc,
      instr,
      memwrite,
      dataadr,
      writedata,
      readdata
  );

  Instruction_Memory imem (
      pc[7:2],
      instr
  );
  Data_Memory dmem (
      clk,
      memwrite,
      dataadr,
      writedata,
      readdata
  );

endmodule


