module full_adder (
    input  logic A,
    input  logic B,
    input  logic Cin,
    output logic Sum,
    output logic Cout
);
  logic sum1, carry1;
  logic carry2;

  half_adder ha1 (
      .a(A),
      .b(B),
      .sum(sum1),
      .carry(carry1)
  );

  half_adder ha2 (
      .a(sum1),
      .b(Cin),
      .sum(Sum),
      .carry(carry2)
  );

  always_comb begin
    if (carry1 == 1'b1 || carry2 == 1'b1) Cout = 1'b1;
    else Cout = 1'b0;
  end

endmodule
