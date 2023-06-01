%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}
%token digit
%left'+' '-'
%left'*' '/'
%%
S:S E '\n' {$$=$2 ; printf("Output = %d \n",$$);}
| ;
E:E'+'E {$$=$1+$3 ;}
| E'-'E {$$=$1-$3 ;}
| E'*'E {$$=$1*$3 ;}
| E'/'E {$$=$1/$3 ;}
| digit {$$=$1;}
;
%%
int main(){
    yyparse();
    return 0 ;
}
void yyerror(char *msg){
    printf("%s\n",msg);
    printf("Arithmetic Expression is Invalid \n");
}
