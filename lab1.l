%{
#include<stdio.h>
int identifier=0,operator=0,braces=0,alpha=0,space=0;
%}
%%
[a-zA-Z] {alpha++;printf("\n Alphabet:");ECHO;}
[0-9]* {identifier++;printf("\n Identifier:");ECHO;}
[*\+] {operator++;printf("\n Operator:");ECHO;}
"(" {braces++;}
")" {braces--;}
[ ] {space++;}
.|\n {;}
%%
void main()
{
printf("enter the expression:");
yylex();
if((braces==0)&&(operator==identifier-1)&&alpha==0&&space==0)
{
printf("\n valid expression");
printf("\n number of operators:%d",operator);
printf("\n number of identifier:%d",identifier);
}
else
printf("\n invalid expression");
printf("\n");
}
