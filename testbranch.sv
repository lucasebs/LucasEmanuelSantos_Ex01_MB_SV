module tb();
  logic clk, rst;
  wire[3:0] cont1, cont2;
  
  initial
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
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
    .rst(rst),
    .cont(cont1)
  );
  
  contadorModulo15_2 c2(
    .clk(clk),
    .rst(rst),
    .cont(cont2)
  );
  
endmodule
