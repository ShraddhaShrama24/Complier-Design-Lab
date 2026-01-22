%{
      #include<stdio.h>
      int ic =0 ;
%}
%%
      [a-zA-Z_][a-zA-Z0-9]*  {ic++;}
      [0-9]+[a-zA-Z_][a-zA-Z0-9]*   { }
        .          { }
%%
int yywrap()
{
      return 1;
}
int main()
{
      printf(“Enter Input”);
      yylex();
      printf(“Number of Identifiers:%d”,ic);
      return 0;
}
