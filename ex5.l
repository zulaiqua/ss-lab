%{
#include<stdio.h>
int nchars,nlines,nwords,space;
%}
%% 
[" "] {space++;}
\n {nlines++;}
[^ \n\t]+ {nwords++; nchars=nchars+yyleng;}
. {nchars++;}

%%
int main()
{
yyin=fopen("name.txt","r");
yylex();
printf("count of characters is %d",nchars);
printf("count of lines is %d",nlines);
printf("number of words is %d\n",nwords);
printf("number of space is %d\n",space);
return 0;
}
