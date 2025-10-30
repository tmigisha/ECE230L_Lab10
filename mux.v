module mux (
    input [7:0] A, B, C, D,
    input [1:0] sel,
    input enable,
    output [7:0] data
);
    assign data = enable ?
                 ((sel == 0) ? A :
                 (sel == 1) ? B :
                 (sel == 2) ? C :
                 (sel == 3) ? D : 0) : 0;

endmodule