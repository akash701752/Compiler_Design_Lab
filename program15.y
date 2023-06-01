%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
int sym[26];
%}
%token id digit
%left'+' '-'
%left'*' '/'
%%
P:P S '\n'
| ;
S:E {printf("Output = %d",$1);}
| id'='E {sym[$1]=$3;}
;
E:digit {$$=$1;}
| id {$$=sym[$1];}
| E'+'E {$$=$1+$3;}
| E'-'E {$$=$1-$3;}
| E'*'E {$$=$1*$3;}
| E'/'E {$$=$1/$3;}
| '('E')' {$$=$2;}
;
%%
int main(void){
    yyparse();
    return 0;
}
void yyerror(char *msg){
    fprintf(stderr, "%s \n", msg); 
}