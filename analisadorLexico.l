%{

    #include<stdio.h>
%}

%option noyywrap

int[0-9]+
id[a-zA-Z][a-zA-Z0-9]*
float[0-9]+[,][0-9]+


%%

se|senao|principal|int|float|enquanto|mostra {printf("[%s] -> Palavra Reservada\n", yytext);}

"=" {printf("[%s] -> Igual\n", yytext);}
"{" {printf("[%s] -> Abre chaves\n", yytext);}
"}" {printf("[%s] -> Fecha chaves\n", yytext);}
";" {printf("[%s] -> Ponto e Virgula\n", yytext);}

{id} {printf("[%s] -> Identificador\n", yytext);}
{int} {printf("[%s] -> Numero Inteiro\n", yytext);}
{int}+{id} {printf("[%s] -> Nao Aceito\n", yytext);}
{float} {printf("[%s] -> Numero Flutuante\n", yytext);}

%%

int main() {

    yylex();
    return 0;
}

