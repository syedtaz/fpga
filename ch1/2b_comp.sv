module eq2_sop
( 
    input var logic [1:0] i_a, i_b,
    output var logic o_aeqb
);

logic p0, p1, p2, p3;

assign o_aeqb = p0 | p1 | p2 | p3;
assign p0 = (~a[1] & ~b[1]) & (~a[0] & ~b[0]);
assign p1 = (~a[1] & ~b[1]) & (a[0] & b[0]);
assign p2 = (a[1] & b[1]) & (~a[0] & ~b[0]);
assign p3 = (a[1] & b[1]) & (a[0] & b[0]);

endmodule