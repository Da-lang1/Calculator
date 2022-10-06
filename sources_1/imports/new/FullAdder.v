`timescale 1ns / 1ps


module FullAdder(
    input i_a, i_b, i_c,
    output o_sum, o_carry
    );

    wire w_sum_0, w_carry_0, w_carry_1;

    HalfAdder HA_0(
    .i_a(i_a),
    .i_b(i_b),
    .o_sum(w_sum_0),
    .o_carry(w_carry_0)
    );

    HalfAdder HA_1(
    .i_a(w_sum_0),
    .i_b(i_c),
    .o_sum(o_sum),
    .o_carry(w_carry_1)
    );

    assign o_carry = w_carry_0 | w_carry_1;

endmodule
