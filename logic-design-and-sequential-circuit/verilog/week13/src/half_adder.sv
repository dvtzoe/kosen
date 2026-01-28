module half_adder (
    input  logic a,
    input  logic b,
    output logic sum,
    output logic carry
);
  always_comb begin
    if (a == b) sum = 1'b0;
    else sum = 1'b1;
  end

  always_comb begin
    if (a == 1'b1 && b == 1'b1) carry = 1'b1;
    else carry = 1'b0;
  end

endmodule
