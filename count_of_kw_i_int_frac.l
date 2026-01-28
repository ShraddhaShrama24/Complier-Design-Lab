%{
      #include<stdio.h>
      int c_rkw=0, c_i=0, c_int=0, c_f=0;
%}
%%
[“int”|”char”|”float”] {c_rkw++;}
[a-z|A-Z|_][a-z|A-Z|0-9]* {c_i++;}
[0-9][0-9]* {c_int++;}
[0-9].[0-9][0-9]* {c_frac++;}
%%
int yywrap()
{
      return 1;
}
int main()
{
      printf(“Enter Input”);
      yylex();
      printf(“Number of reserved key words :%d”,c_rkw);
      printf(“Number of identifiers :%d”,c_i);
      printf(“Number of integers :%d”,c_int);
      printf(“Number of fraction numbers :%d”,c_f);
      return 0;
}
