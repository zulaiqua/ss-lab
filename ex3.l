%{
#include<stdio.h>
int flag=0;

%}
%%

("AND"|"OR"|"not"|"NOT"|"or"|"and") { flag=1;}
%%
int main()
 {
 printf("enter the sentence: ");
yylex();
if(flag==1)
{
printf("compound sentence");
}
else
{
printf("simple sentence");
}
}
