%{
%}
%%
"<"[^>]*">" fprintf(yyout,"%s",yytext);
. ;
%%
int yywrap(){
    return 1;
}
int main(int arcg,char *argv[])
{
    extern FILE *yyin , *yyout ;
    yyin = fopen("tags.html","r") ;
    yyout = fopen("extractedTags.txt","w");
    yylex() ;
    return 0 ;
}
