module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    input EN,
    output reg GT,
    output reg LT,
    output reg EQ
);

  function [2:0] compare_bits(input [3:0] a, input [3:0] b);
    integer i;
    for (i = 3; i >= 0; i = i - 1) begin
      if (a[i] == 1 && b[i] == 0) begin
        return 3'b100;
      end else if (a[i] == 0 && b[i] == 1) begin
        return 3'b010;
      end
    end
    return 3'b001;
  endfunction

  always @(*) begin
    if (EN == 0) begin
      GT = 0;
      LT = 0;
      EQ = 0;
    end else begin
      {GT, LT, EQ} = compare_bits(A, B);
    end
  end

endmodule
