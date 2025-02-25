module top(
    input [15:0] sw,
    output [15:0] led
    
);
integer i,
integer num_sw;

initial begin
    num_sw = 16;
    led[0] = ~sw[0];
end



always @(*)
begin
    for (i = 1; i < num_sw; i = i + 1)
    begin
        led[i] = led[i - 1] ^ sw[i];
    end
end
    
endmodule
