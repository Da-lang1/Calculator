`timescale 1ns / 1ps


module HalfAdder(
    input i_a, i_b,
    output o_sum, o_carry
    );

    assign o_sum  = i_a ^ i_b;
    assign o_carry  = i_a & i_b;

endmodule
