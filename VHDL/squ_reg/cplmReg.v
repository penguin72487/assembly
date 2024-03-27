module cplmReg(
    input wire clk,
    input wire rst_n,
    input wire [3:0] parallel_data,
    input wire S1,
    input wire S0,
    output reg [3:0] reg_out
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        reg_out <= 4'b0;
		  
    end else begin
        case ({S1, S0})
            2'b00: begin
                reg_out <= reg_out;
            end
            2'b01: begin
                reg_out <= ~reg_out;
            end
            2'b10: begin
                reg_out <= parallel_data;
            end
            2'b11: begin
 
                reg_out <= 4'b0;
            end
            default: begin
  
                reg_out <= reg_out;
            end
        endcase
    end
end

endmodule
