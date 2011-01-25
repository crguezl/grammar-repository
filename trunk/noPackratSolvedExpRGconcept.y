%token NUM OP

%%

T: S
;

S:
     x S x  
  |  x 
;

x:
     NUM
  |  x OP NUM
;
%%


