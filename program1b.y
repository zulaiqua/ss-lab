%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}

%token NUM ENTER
%left '+' '-'
%left '*' '/'

%%
E: expr ENTER { printf("result is %d\n",$$); exit(0);}
expr: expr '+' expr{$$=$1+$3;}
|expr '-' expr{$$=$1-$3;} 
| '(' expr ')' {$$=$2;}
| '-' expr {$$=-$2;}
|expr '*' expr{$$=$1*$3;}
|expr '/' expr{ if($3==0){printf("divide by zero error"); exit(0);} else {$$=$1/$3;} }
 
|NUM {$$=$1;}
;
%%

int main()
{
printf("enter the expression");
yyparse();
}
int yyerror()
{
printf("invalid expression\n");
exit(0);
}

