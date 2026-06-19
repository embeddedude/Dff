module dff(input clk,d,reset,
           output reg q);
always @(posedge clk)begin
  if (reset==0) begin
     q <= 1'b0;
  end
  else begin
    q <= d;
  end
end  
endmodule