module tbdff();
reg clk;
reg d;
wire q;
dff dut(.clk(clk),.d(d),.q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;
    d = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    #20 $finish;
end
initial begin
    $monitor("time=%0t,clock=%b,q=%b,d=%b",$time,clk,q,d);
end
endmodule