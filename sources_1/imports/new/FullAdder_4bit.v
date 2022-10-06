`timescale 1ns / 1ps


module FullAdder_4bit(
    input [3:0] i_a, i_b, // i_a[3], i_a[2], i_a[1], i_a[0]
    input i_cin,
    output [3:0] o_sum,
    output o_carry
    );

    wire w_carry_0, w_carry_1, w_carry_2;

    FullAdder FA_0(
    .i_a(i_a[0]),
    .i_b(i_b[0]),
    .i_c(i_cin),
    .o_sum(o_sum[0]),
    .o_carry(w_carry_0)
    );
    
    FullAdder FA_1(
    .i_a(i_a[1]),
    .i_b(i_b[1]),
    .i_c(w_carry_0),
    .o_sum(o_sum[1]),
    .o_carry(w_carry_1)
    );

    FullAdder FA_2(
    .i_a(i_a[2]),
    .i_b(i_b[2]),
    .i_c(w_carry_1),
    .o_sum(o_sum[2]),
    .o_carry(w_carry_2)
    );

    FullAdder FA_3(
    .i_a(i_a[3]),
    .i_b(i_b[3]),
    .i_c(w_carry_2),
    .o_sum(o_sum[3]),
    .o_carry(o_carry)
    );
endmodule
