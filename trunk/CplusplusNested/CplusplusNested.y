%token ID INT NUM

%right '='
%left '+'

%%
prog:
    /* empty */
  | prog stmt
;

stmt: 
    expr ';' 
  | decl    
;

expr:
    ID 
  | NUM
  | INT '(' expr ')' /* typecast */ 
  | expr '+' expr
  | expr '=' expr
;

decl:
    INT declarator ';'
  | INT declarator '=' expr ';'
;

declarator:
    ID 
  | '(' declarator ')'
;

%%

