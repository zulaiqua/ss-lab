%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
int yylex();
%}

%token A B ENTER

%%
stmt: s ENTER{printf("valid grammer\n");exit(0);}
s: c B|B
c: A c|A
;
%%

void main()
{
printf("enter the string\n");
yyparse();
}
int yyerror()
{
printf("invalid expression\n");
exit(0);
}

