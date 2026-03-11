module reg4_sync_lab (
    input wire clk,
    input wire reset,
    input wire en,
    input wire [3:0] d,
    output reg [3:0] q
);

  always @(posedge clk) begin
    if (reset) begin
      q <= 4'b0000;
    end else if (en) begin
      q <= d;
    end
  end

endmodule

module reg4_async_lab (
    input wire clk,
    input wire reset,
    input wire en,
    input wire [3:0] d,
    output reg [3:0] q
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 4'b0000;
    end else if (en) begin
      q <= d;
    end
  end

endmodule
