package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
int |
if |
else |
Switch |
For |
While |
do |
do-while |
abtract |
assent |
boolean |
break |
byte |
case |
cacht |
char |
class |
const |
continue |
default |
double |
else |
enum |
extends |
final |
finally |
float |
goto |
implements |
import |
instanceof |
interface |
long |
native |
new |
package |
private |
protected |
public |
return |
short |
Static |
strictfp |
super |
synchronized |
this |
throw |
transient |
try |
void |
volatile |


while {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}

