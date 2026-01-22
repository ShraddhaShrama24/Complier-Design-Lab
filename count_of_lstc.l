%{
      #include<stdio.h>
      int lc=0, sc=0, tc=0, cc=0;
%}
%%
[/n]  {lc++;}
[ ]    {sc++;}
[/t]   {tc++;}
  .     {cc++;}
%%
int yywrap()
{
     return 1;
}
int main()
{
      printf(“Enter Input”);
      yylex();
      printf(“Numbers of lines:%d”,lc”);
      printf(“Numbers of tabs:%d”,tc”);
      printf(“Numbers of spaces:%d”,sc”);
      printf(“Numbers of characters:%d”,cc”);
      return 0;
}
