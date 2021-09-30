%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <conio.h>
    #include <string.h>
    FILE *yyin
%}

/*SECCION DE OPCIONES*/
/*Esto indica a Flex que lea solo un fichero*/
%option noywrap
/*Nos permite obtener el numero de linea*/
%option yylineno

/*SECCION DE TOKENS*/
DIGITO          0-9
LETRA           [a-zA-Z]
ESPACIO         [ ]
INI_COMENTARIO  [/*]
FIN_COMENTARIO  [*/]
GUIONES         [-_]
CHAR_COMA       [,]
CHAR_PUNTO      [.]
CHAR_PUNTOYCOMA [;]
CHAR_DOSPUNTOS  [:]

IDENTIFICADOR   {LETRA}({LETRA}|{DIGITO}|{GUIONES})*
CONST_INTEGER   (-?[1-9][0-9]{0,4})|0

/*La ER de abajo considera string a todo lo que esté dentro de comillas dobles excepto al caracter de fin de linea y la propia comilla doble*/
CONST_CADENA \"[^\n"]*\"
ho
/*Operadores logicos y operadores aritmeticos basicos
OP_SUMA             [+]
OP_RESTA            [-]
OP_MULT             [*]
OP_DIV              [/]
OP_IGUAL            [=]
OP_MAYOR            [">"]
OP_MENOR            ["<"]
OP_MAYORIGUAL       ">="
OP_MENORIGUAL       "<="
OP_COMP_IGUAL       "=="
OP_NEGACION         "!"
OP_DISTINTO         "!="