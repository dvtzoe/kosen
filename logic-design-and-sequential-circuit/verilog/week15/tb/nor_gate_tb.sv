module nor_gate_tb;

  logic [1:0] a, b;
  logic [1:0] out;

  nor_gate dut (
      .a  (a),
      .b  (b),
      .out(out)
  );

  initial begin
    $display("Testing 2-bit NOR gate");
    $display("a  b  | out");
    $display("-------+----");

    for (int i = 0; i < 4; i++) begin
      for (int j = 0; j < 4; j++) begin
        a = i;
        b = j;
        #10;
        $display("%b %b | %b", a, b, out);
      end
    end

    $finish;
  end

endmodule
