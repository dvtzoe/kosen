module sr_latch_nand (
    input S,
    input R,
    output reg Q,
    output reg Qbar
);

  always @(*) begin
    if (S == 0 && R == 1) begin
      Q = 1;
      Qbar = 0;
    end else if (S == 1 && R == 0) begin
      Q = 0;
      Qbar = 1;
    end else if (S == 1 && R == 1) begin
      Q = Q;
      Qbar = Qbar;
    end else begin
      Q = 1'bx;
      Qbar = 1'bx;
    end
  end

endmodule
