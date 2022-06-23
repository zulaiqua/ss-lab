%{
#include<stdio.h>
int nchars;
%}
%%
. {nchars++}
%%
int main()
{
printf("enter your name\n");
yylex();
printf("count is %d",nchars);
return 0;
}
