module mod_eq1
( 
     input var logic i0, i1,
     output var logic o_eq
);

logic p0, p1;

assign o_eq = p0 | p1;
assign p0 = ~i0 & ~i1;
assign p1 = i0 & i1;


endmodule