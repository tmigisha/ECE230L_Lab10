module byte_memory(
    input [7:0] d,
    input e,
    output reg [7:0] m
);

    always @(e, d) begin
        if (e)
            m <= d;
    end
    
endmodule
