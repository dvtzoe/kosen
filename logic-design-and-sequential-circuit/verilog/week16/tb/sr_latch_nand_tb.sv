`timescale 1ns / 1ps

module sr_latch_nand_tb;

  reg S, R;
  wire Q, Qbar;

  sr_latch_nand uut (
      .S(S),
      .R(R),
      .Q(Q),
      .Qbar(Qbar)
  );

  initial begin
    $display("S\tR\tQ\tQbar");
    $monitor("%b\t%b\t%b\t%b", S, R, Q, Qbar);

    for (int s = 0; s < 2; s = s + 1) begin
      for (int r = 0; r < 2; r = r + 1) begin
        S = s;
        R = r;
        #10;
      end
    end

    $finish;
  end

endmodule
