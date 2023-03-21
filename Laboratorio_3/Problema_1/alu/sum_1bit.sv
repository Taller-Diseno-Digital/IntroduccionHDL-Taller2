module sum_1bit(
    input logic a,b,cin,
    output logic cout, sum
);

    logic p,g,c;

    and and_g(g, a, b);
    or or_p(p, a, b);
    xor xor_sum(sum, a, b, cin);
    and and_c(c, p, cin);
    or or_cout(cout, g,c);

endmodule