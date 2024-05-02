module T_FF(input clk, input reset, input T, output reg Q);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else if (T)
            Q <= Q^T;
    end
endmodule
module four_bit_counter(input clk, input reset, output [3:0] out);
    wire t_enable;
    assign t_enable = 1'b1;  // T flip-flop always toggles

    T_FF tff0(clk, reset, t_enable, out[0]);
    T_FF tff1(~out[0], reset, out[0], out[1]);
    T_FF tff2(~out[1], reset, out[1], out[2]);
    T_FF tff3(~out[2], reset, out[2], out[3]);
endmodule
