%{
int count = 0 ; 
%}
%%
"if"|"else"|"float"|"int"|"for"|"while"|"unsigned"|"main" {count++;}
[a-zA-Z][a-zA-Z0-9]* {count++; }
"<"|">"|"<="|">="|"=="|"--"|"++"|"+"|"-" {count++; }
"("|")"|"{"|"}"|";" {count++; }
[0-9]* {count++;}
[0-9]*?\.[0-9]+ {count++; }
. ;
%%
int yywrap(){
    return 1;
}
int main(){
    yylex() ;
    printf("Total Tokens = %d",count);
    return 0;
}
