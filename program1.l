%{
    int ch=0 , bl=0 , ln=0 ,tab=0 ;
%}
%%
[\n] {ln++;}
[\t] {bl++; tab++;}
[" "] {bl++;}
[^\n\t] {ch++;}
%%
int yywrap(){
    return 1;
}
int main()
{
    printf("Enter Paragraph \n");
    yylex() ;
    printf("Lines = %d \nTab = %d \nCharacters = %d \nBlank = %d ",ln,tab,ch,bl) ;
    return 0;
}
