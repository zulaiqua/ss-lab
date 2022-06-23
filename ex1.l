%{
#include<stdio.h>
int count=0;

%}
%%

[a-zA-Z]* { count++;}
"\n" { printf("The number of words are %d\n",count);}
%%

int main()
{
printf("enter the sentence\n");
	yylex();
	return 0;
}
