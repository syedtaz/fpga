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

module eq1
(   
    input var logic i0, i1,
    output var logic o_eq
);

logic p0, p1;

assign o_eq = p0 | p1;
assign p0 = ~i0 & ~i1;
assign p1 = i0 & i1;


endmodule

module eq2
( 
    input var logic [1:0] i_a, i_b,
    output var logic o_aeqb
);

logic e0, e1;

eq1 eq_bit0_unit (.i0(i_a[0]), .i1(i_b[0]), .o_eq(e_0));
eq1 eq_bit1_unit (.i0(i_a[1]), .i1(i_b[1]), .o_eq(e_1));

assign o_aeqb = e0 & e1;
  
endmodule