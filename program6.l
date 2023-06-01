%{
%}
%%
[\t" "]+ fprintf(yyout," ") ;
\n ;
.|\n fprintf(yyout,"%s",yytext) ;
%%
int yywrap(){
    return 1 ;
}
int main(int argc,char *argv[])
{
    extern FILE *yyin, *yyout ;
    yyin = fopen("input.txt","r") ;
    yyout = fopen("output.txt","w") ;
    yylex() ;
    return 0;
}
