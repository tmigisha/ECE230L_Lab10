module demux(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A, B, C, D
    );
    
    always @(*) begin
        case(sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data};
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end
    
endmodule
