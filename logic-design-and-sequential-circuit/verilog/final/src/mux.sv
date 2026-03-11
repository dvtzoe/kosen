module mux (
    input wire I0,
    input wire I1,
    input wire I2,
    input wire I3,
    input wire [1:0] S,
    output wire Y
);
  assign Y = (S == 2'b00) ? I0 : (S == 2'b01) ? I1 : (S == 2'b10) ? I2 : I3;

endmodule
