package codigo;
import static codigo.Tokens.*;
%%
%class Analizador
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String Analizador;
%}
%%
public |
class |
if |
static |
void |
true |  {analizador=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
{L}({L}|{D})* {analizador=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {analizador=yytext(); return Numero;}
 . {return ERROR;}
