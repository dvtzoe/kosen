module tb;
  reg a, b;
  wire nand_y, nor_y, xnor_y, xor_y;

  nand_gate nand_uut (
      .a(a),
      .b(b),
      .y(nand_y)
  );

  nor_gate nor_uut (
      .a(a),
      .b(b),
      .y(nor_y)
  );

  xnor_gate xnor_uut (
      .a(a),
      .b(b),
      .y(xnor_y)
  );

  xor_gate xor_uut (
      .a(a),
      .b(b),
      .y(xor_y)
  );

  initial begin
    $dumpfile("out/graph.vcd");
    $dumpvars(1, tb);

    a = 0;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 1;
    b = 1;
    #10;

    $finish;
  end
endmodule
