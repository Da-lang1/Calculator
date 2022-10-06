`timescale 1ns / 1ps


module BCDtoFND_Adder(
    input [3:0] i_a, i_b,
    input [1:0] i_digitSelect, 
    input i_en, i_mode,
    output [3:0] o_digit,
    output [7:0] o_fndFont
    );
    wire [3:0] w_sum;

    FullAdderSub_4bit FullAdderSub_4bit(
        .i_a(i_a),
        .i_b(i_b),
        .i_mode(i_mode),
        .o_sum(w_sum),
        .o_carry(o_carry)
    );

    BCDtoFND BCDtoFND(
        .i_digitSelect(i_digitSelect),
        .i_value(w_sum),
        .i_en(i_en),
        .o_digit(o_digit),
        .o_fndFont(o_fndFont)
    );

endmodule
