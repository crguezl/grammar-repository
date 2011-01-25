%token ID NUM

%left   ','
%left   '-' '+'
%left   '*' '/'

%%

type_decl : 
      'type' ID '=' type ';'
;

type : 
      '(' id_list ')'
    | range
;

range:
      expr '..' expr
;

id_list : 
      ID
    | id_list ',' ID
;

expr : 
      '(' expr ')'   
    | expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | expr ',' expr
    | ID
    | NUM
;

%%

