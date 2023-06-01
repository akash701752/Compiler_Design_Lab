%s AB AC AD ABC ABD ACD ABCD DEAD
%%
<INITIAL>a BEGIN AB;
<INITIAL>B BEGIN INITIAL;
<AB>a BEGIN ABC;
<AB>b BEGIN AC;
<AC>a BEGIN ABD;
<AC>b BEGIN AD;
<AD>a BEGIN AB;
<AD>b BEGIN INITIAL;
<ABC>a BEGIN ABCD;
<ABC>b BEGIN ACD;
<ABD>a BEGIN ABC;
<ABD>b BEGIN AC;
<ACD>a BEGIN ABD;
<ACD>b BEGIN AD;
<ABCD>a BEGIN ABCD;
<ABCD>b BEGIN ACD;
<INITIAL>\n printf("Not Accepted \n");
<AB>\n printf("Not Accepted \n");
<AC>\n printf("Not Accepted \n");
<AD>\n printf("Accepted \n");
<ABC>\n printf("Not Accepted \n");
<ABD>\n printf("Accepted \n");
<ACD>\n printf("Accepted \n");
<ABCD>\n printf("Accepted \n");
<INITIAL>[^ab\n] BEGIN DEAD;
<AB>[^ab\n] BEGIN DEAD;
<AC>[^ab\n] BEGIN DEAD;
<AD>[^ab\n] BEGIN DEAD;
<ABC>[^ab\n] BEGIN DEAD;
<ABD>[^ab\n] BEGIN DEAD;
<ACD>[^ab\n] BEGIN DEAD;
<ABCD>[^ab\n] BEGIN DEAD;
<DEAD>[^\n] BEGIN DEAD;
<DEAD>[\n] BEGIN INITIAL ; printf("Invalid Input \n");
%%
int yywrap(){
    return 1;
}
int main()
{
    printf("Enter the String of a and b \n");
    yylex();
}
