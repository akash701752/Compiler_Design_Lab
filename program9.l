%s A B C F
%% 
<INITIAL>\n printf("Accepted \n") ; BEGIN INITIAL ;
<INITIAL>a BEGIN A ;
<INITIAL>b BEGIN B ;
<A>a BEGIN INITIAL ;
<A>b BEGIN C ;
<A>\n BEGIN INITIAL ; printf("NOT Accepted \n") ;
<B>a BEGIN C ;
<B>b BEGIN INITIAL ;
<B>\n BEGIN INITIAL ; printf("NOT Accepted \n") ;
<C>a BEGIN B ;
<C>b BEGIN A ;
<C>\n BEGIN INITIAL ; printf("Not Accepted \n");
<A>[^ab\n] BEGIN F ;
<B>[^ab\n] BEGIN F ;
<C>[^ab\n] BEGIN F ;
<INITIAL>[^ab\n] BEGIN F ;
<F>[^ab\n] BEGIN F ;
<F>[\n] BEGIN INITIAL ; printf("Invalid Input \n") ;
. ;
%%
int yywrap(){
    return 1 ;
}
int main(){
    printf("Enter a String of a & b Only \n");
    yylex() ;
}
