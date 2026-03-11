module mux_tb;
  logic I0, I1, I2, I3;
  logic [1:0] S;
  wire Y;

  mux u1 (
      .I0(I0),
      .I1(I1),
      .I2(I2),
      .I3(I3),
      .S (S),
      .Y (Y)
  );

  initial begin
    $display("I0\tI1\tI2\tI3\tS1\tS0\tY");
    $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b", I0, I1, I2, I3, S[1], S[0], Y);

    I0 = 1;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    S  = 2'b00;
    #10;

    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 0;
    S  = 2'b01;
    #10;

    I0 = 0;
    I1 = 0;
    I2 = 1;
    I3 = 0;
    S  = 2'b10;
    #10;

    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 1;
    S  = 2'b11;
    #10;

    $finish;

  end

endmodule
