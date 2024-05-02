module mealy1101(
    input wire x, clk, reset,
    output wire z
);
    reg [2:0] state, next_state;
    reg z_out;

    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            z_out <= 0;
        end
        else begin
            z_out <= (state == S4)&x;
            state <= next_state;

        end
    end


    always @* begin

        case (state)
            S0: next_state = x ? S1 : S0;
            S1: next_state = x ? S2 : S0;
            S2: next_state = x ? S2 : S3;
            S3: next_state = x ? S1 : S4;
            S4: next_state = x ? S1 : S0;

            default: next_state = S0;
        endcase
    end

    assign z = z_out;
endmodule