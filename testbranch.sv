module tb();
  loghic clk, rst;
  
  initial
    begin 
      $dumpfile("dump.vcd");
      $dumpfile(1);
      
      clk = 0;
      rst = 1;
      
      #10 rst = ~rst;
      
      repeat (100)
      	begin
        	# 10 clk = ~clk;
        end      
      
    end
  
  contadorModulo15_1 c1(
    .clk(clk),
    .rst(rst)
  );
  
endmodule
