%{
int ind = 0 ;
%}
%%
[a-zA-Z_][a-zA-Z_0-9]* {ind++ ; printf("Valid Identifier : %s\n",yytext);}
[0-9][a-zA-Z_0-9]* { printf("Invalid Identifier : %s\n",yytext);}
. ;
%%
int yywrap(){
    return 1;
}
int main()
{
    yylex();
    printf("Number of Valid Identifier = %d ",ind);
    return 0;
}


