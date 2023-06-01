%{
int i=0 , f=0;
%}
DIGIT [0-9] 
%%
{DIGIT}* {ECHO; printf(" is a Integer"); i++;}
{DIGIT}+?\.{DIGIT}* {ECHO; printf(" is a Float"); f++;}
%%
int yywrap(){
    return 1;
}
int main()
{
    yylex() ;
    printf("Number of Integer = %d \nNumber of Float = %d \n",i,f);
    return 0 ;
}
