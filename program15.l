%{
#include<stdlib.h>
#include"y.tab.h"
void yyerror(char *);
int yylval;
%}
%%
[a-z] {yylval= *yytext - 'a'; return id;}
[0-9]+ {yylval=atoi(yytext); return digit;}
[-+()=/*\n] {return *yytext;}
[ \t] ;
. yyerror("Invalid Character");
%%
int yywrap(){
    return 1;
}