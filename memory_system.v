module memory_system (
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [7:0] w[3:0];
    wire [7:0] s[3:0];
    wire [7:0] m[3:0];
    
    wire final_data;

    byte_memory register1(
        .d(w[0]),
        .e(s[0]),
        .m(m[0])
    );
    
    byte_memory register2(
        .d(w[1]),
        .e(s[1]),
        .m(m[1])
    );
    
    byte_memory register3(
        .d(w[2]),
        .e(s[2]),
        .m(m[2])
    );
    
    byte_memory register4(
        .d(w[3]),
        .e(s[3]),
        .m(m[3])
    );


    demux demux_inst1(
        .data(data),
        .sel(addr),
        .A(w[0]),
        .B(w[1]),
        .C(w[2]),
        .D(w[3])
    );
    
    demux demux_inst2(
        .data(store),
        .sel(addr),
        .A(s[0]),
        .B(s[1]),
        .C(s[2]),
        .D(s[3])
    );
    
    mux mux_inst1(
        .A(m[0]),
        .B(m[1]),
        .C(m[2]),
        .D(m[3]),
        .sel(addr),
        .data(final_data)
    );
    
    assign memory = final_data;


endmodule