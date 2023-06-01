%{
%}
%%
"//"[^\n]+ ;
"/*"([\n]+|[^*]+|[*]+[^/])*[*]+"/" ;
.|\n fprintf(yyout,"%s",yytext) ;
%%
int yywrap(){
    return 1 ;
}
int main(int argc,char *argv[])
{
    extern FILE *yyin, *yyout ;
    yyin = fopen("Cinput.c","r") ;
    yyout = fopen("Coutput.c","w") ;
    yylex() ;
    return 0;
}
