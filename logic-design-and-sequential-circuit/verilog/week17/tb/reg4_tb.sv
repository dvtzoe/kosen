module reg4_sync_tb;

  reg clk;
  reg reset;
  reg en;
  reg [3:0] d;
  wire [3:0] q_sync;
  wire [3:0] q_async;

  reg4_sync_lab u1 (
      .clk(clk),
      .reset(reset),
      .en(en),
      .d(d),
      .q(q_sync)
  );

  reg4_async_lab u2 (
      .clk(clk),
      .reset(reset),
      .en(en),
      .d(d),
      .q(q_async)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("out/week17/reg4_sync.vcd");
    $dumpvars(0, reg4_sync_tb);
    $display("$time\treset\ten\td\tq_sync\tq_async");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, reset, en, d, q_sync, q_async);

    reset = 1;
    en    = 0;
    d     = 4'b1010;
    #12;

    reset = 0;
    #10 d = 4'b1100;
    ;
    #10 d = 4'b0011;

    #7 reset = 1;
    #10 reset = 0;

    #20 $finish;
  end

endmodule
