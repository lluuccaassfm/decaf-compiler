lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

IF: 'if';
BOOLEAN: 'boolean';
CALLOUT: 'callout';
CLASS: 'class Program';
ELSE: 'else';
INTEGER: 'int';
RETURN: 'return';
VOID: 'void';
FOR: 'for';
BREAK: 'break';
CONTINUE: 'continue';

LCURLY : '{';
RCURLY : '}';

LPARENTESE : '(';
RPARENTESE : ')';

LCOLCHETE : '[';
RCOLCHETE : ']';

BOOLEANCONDITION: 'true' | 'false';

ID: ('a'..'z' | 'A'..'Z' | '_' )+ (INT)* ID?;

WS_ : (' ' | '\n' | '\t' | '\\\\')+ -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR: '\'' (ESC | ESPECIALASK | [a-z] | [A-Z] | INT | '['|']'|'{'|'|'|'}'|'~') '\'';

STRING: '"' ( ESC | ID | PONTUACAO | ESPECIALASK)+ '"';

HEXLIT: INT ('x'([a-fA-F]|INT)+)?;

NUMBER: (INT)+;

OP: '+' | '-' | '*'| '>' | '<' | '<=' | '!=' | '&&' | '==' | '=' | '||';

DOISPONTOS: ':';
VIRG: ',';
PONTOVIRG: ';';

fragment ESC : '\\' ('n'|'"'|'t'|'\\');
fragment ESPECIALASK : '\\' ([ !#-&(-/:-@\-`]);
fragment INT : [0-9];
fragment PONTUACAO: ( '.' | '?' | ',' | ';' | ' ' | ':' | ESPECIAL );
fragment ESPECIAL: '\\' ( '\'' | '\"' | '\\' );
