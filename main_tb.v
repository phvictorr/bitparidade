`timescale 1ns/100ps
`include "main.v"

module main_tb;
    reg [15:0] D; // onde input é registrador
    wire E; // onde saída é um wire
    main main1(D, E); // Instancia o módulo main

    initial begin
        $dumpfile("main_tb.vcd"); // Cria o arquivo de dump
        $dumpvars(0, main_tb); // Inicia o dump
        D = 16'b0000000000001100;
        #1 // time
        D = 16'b0000000000001110;
        #1 // time
        $finish; // para finalizar a simulação
    end

endmodule