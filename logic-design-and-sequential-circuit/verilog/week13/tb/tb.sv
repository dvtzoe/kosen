module tb_full_adder;
  logic A, B, Cin;
  logic Sum, Cout;

  full_adder uut (
      .A(A),
      .B(B),
      .Cin(Cin),
      .Sum(Sum),
      .Cout(Cout)
  );

  initial begin
    $dumpfile("out/week13/full_adder.vcd");
    $dumpvars(0, tb_full_adder);
    $display("Time\tA\tB\tCin\tSum\tCout");
    $display("------------------------------------");

    A   = 0;
    B   = 0;
    Cin = 0;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 0;
    B   = 0;
    Cin = 1;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 0;
    B   = 1;
    Cin = 0;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 0;
    B   = 1;
    Cin = 1;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 1;
    B   = 0;
    Cin = 0;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 1;
    B   = 0;
    Cin = 1;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 1;
    B   = 1;
    Cin = 0;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    A   = 1;
    B   = 1;
    Cin = 1;
    #10;
    $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, Cin, Sum, Cout);

    $display("\nAll test cases completed!");
    $finish;
  end
endmodule
