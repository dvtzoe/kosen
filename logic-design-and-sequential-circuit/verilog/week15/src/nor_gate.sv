module nor_gate (
    input  logic [1:0] a,
    input  logic [1:0] b,
    output logic [1:0] out
);

  function logic nor_func(input logic x, input logic y);
    return ~(x | y);
  endfunction

  integer i;
  always_comb begin
    for (i = 0; i < 2; i = i + 1) begin
      out[i] = nor_func(a[i], b[i]);
    end
  end

endmodule
