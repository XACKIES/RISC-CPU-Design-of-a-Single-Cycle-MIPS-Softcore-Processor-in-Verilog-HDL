module ALU (
    input      [31:0] srca,
    input      [31:0] srcb,
    input      [ 2:0] alucontrol,
    output reg [31:0] aluout,
    output            zero
);

  wire [31:0] condinvb, sum;

  assign condinvb = alucontrol[2] ? ~srcb : srcb;
  assign sum      = srca + condinvb + {31'd0, alucontrol[2]};

  always @(*) begin
    case (alucontrol[1:0])
      2'b00:   aluout = srca & srcb;  // AND
      2'b01:   aluout = srca | srcb;  // OR
      2'b10:   aluout = sum;  // ADD/SUB , 2'Complement Method
      2'b11:   aluout = {31'b0, sum[31]};  // Set Less Than
      default: aluout = 32'hxxxxxxxx;
    endcase
  end

  assign zero = (aluout == 32'b0);

endmodule





