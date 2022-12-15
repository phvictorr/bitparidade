/* Crie um código para calcular o bit de paridade par para um número binário de 16
bits. O código deve retornar 1 se o total de 1's contido no número é ímpar ou 0
caso o total de 1's seja par. Crie um testbench para verificar o funcionamento do
seu código. */

module main(D, E);
    input [15:0] D; // Entrada
    output E; // Saída
    assign E = D[0]^D[1]^D[2]^D[3]^D[4]^D[5]^D[6]^D[7]^D[8]^D[9]^D[10]^D[11]^D[12]^D[13]^D[14]^D[15]; // atribuir D em E como saída e suas combinações, onde ^ é XOR
endmodule