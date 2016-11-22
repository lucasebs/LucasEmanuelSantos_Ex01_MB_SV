module contadorModulo15_1(
  input logic clk, rst,
  output logic cont);
  
  logic decresce;
  
  always_ff@(posedge clk or posedge rst)
    if (rst)
      begin
        decresce = 0
        cont <= 4'd0;
      end
  
  	else
      begin
        
        if (decresce)
          
          if (cont == 4'd0)
            begin
              decresce = 0;
              cont <= cont + 4'd1;
            end
          else
            cont <= cont - 4'd1;
        
      	else
          
          if (cont == 4'd0)
            begin
              decresce = 1;
              cont <= cont - 4'd1;
            end
          else
            cont <= cont + 4'd1;
        
      end
  
endmodule
  
module contadorModulo15_2(
  input logic clk, rst,
  output logic cont);
  
  logic decresce;
  
  always_ff@(posedge clk or posedge rst)
    if (rst)
      begin
        decresce = 0
        cont <= 4'd0;
      end
  
  	else
      begin
        
        if (decresce)
          
          if (cont == 4'd0)
              decresce = 0;
          else
            cont <= cont - 4'd1;
        
      	else
          
          if (cont == 4'd0)
              decresce = 1;
          else
            cont <= cont + 4'd1;
        
      end
  
endmodule
