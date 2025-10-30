module top (
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    dlatch part1(
        .D(sw[0]),
        .E(btnC),
        .NotQ(led[1]),
        .Q(led[0])
    );
    
    memory_system part2(
        .data(sw[15:8]),
        .store(sw[7:6]),
        .addr(btnC),
        .memory(led)
    );

endmodule