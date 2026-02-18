`timescale 1ns / 1ps

module comparator_4bit_tb;

  reg [3:0] A, B;
  reg EN;
  wire GT, LT, EQ;

  comparator_4bit uut (
      .A (A),
      .B (B),
      .EN(EN),
      .GT(GT),
      .LT(LT),
      .EQ(EQ)
  );

  initial begin
    $display("EN\tA\tB\tGT\tLT\tEQ");
    $monitor("%b\t%b\t%b\t%b\t%b\t%b", EN, A, B, GT, LT, EQ);

    EN = 1;
    for (int a = 0; a < 16; a = a + 1) begin
      for (int b = 0; b < 16; b = b + 1) begin
        A = a;
        B = b;
        #10;
      end
    end

    $finish;
  end

endmodule
