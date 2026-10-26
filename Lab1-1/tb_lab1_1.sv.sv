class hello;
  task greet(string greeting, int t);
    $display ("%s time = %t", greeting, t);
    endtask
endclass
module hello_world ();
  int t;
    hello ihello;
    initial begin
      ihello = new();
      t = $realtime();
      ihello.greet("Farid's first SystemVerilog program",t);
      $finish;
    end
endmodule