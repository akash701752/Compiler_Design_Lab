%{
int lines=0 , words=0 , spaces=0 , total=0 ;
%}
%%
([A-Za-z0-9])+ {words++ ;}
[\n] {lines++;}
[" "]+ {spaces++ ;}
%%
int yywrap(){
    return 1;
}
int main(int argc,char *argv[])
{
    extern FILE *yyin ;
    yyin = fopen("input.txt","r");
    yylex() ;
    printf("Lines = %d\nWords = %d\nSpaces = %d\nTotal = %d\n",lines,words,spaces,words+spaces);
    return 0 ;
}
