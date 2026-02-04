%{
#include<stdio.h>
int uc=0, lc=0, dc=0, sc=0;
%}
%%
[A-Z] {sc++;}
[a-z] {lc++;}
[0-9] {dc++;}
[^A-Za-z0-9] {sc++;}
%%
int yywrap()
{
 return 1;
}
int main()
{
 printf(Enter Password");
 yylex();
 if(uc>0 && lc>0 && sc>0 && dc>0)
 {
  printf("Correct Password");
 }
 else 
 {
  if(uc==0)
  {
   printf("No upper case ");
  }
  if(lc==0)
  {
   printf("No lower case ");
  }
  if(dc==0)
  {
   printf("No digit ");
  }
  if(sc==0)
  {
   printf("No special character");
  }
 }
 return 0;
}

