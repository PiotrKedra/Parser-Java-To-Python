grammar Java;

// parser rules


logical : V_BOOLEAN | V_INT | LEFT_PAREN expression RIGHT_PAREN;

type : T_BOOLEAN | T_INT | T_STRING | T_DOUBLE;
value : V_DOUBLE | V_STRING | V_BOOLEAN | V_INT;
comperator : LESS | LESS_EQUAL | GREATER | GREATER_EQUAL | EQUAL | NOT_EQUAL | ANDAND | OROR;
operator : PLUS | MINUS | DIV | MUL;

operation : (WORD | value) ( operator (WORD|value))*;

assigne : ASSIGN operation;

assignment : WORD assigne;

definition : type WORD;

declaration : definition assigne;

increment : PLUS PLUS WORD;

decrement : MINUS MINUS WORD;

expression : EXCLAMATION expression
	| logical comperator logical
	| logical;

return: RETURN (WORD | value | operation | expression);

line : (definition | declaration | assignment| return ) SEMI;


if_definition : IF LEFT_PAREN expression RIGHT_PAREN body
                (ELSE IF LEFT_PAREN expression RIGHT_PAREN body )*
                (ELSE LEFT_PAREN expression RIGHT_PAREN body )?;

while_definition : WHILE LEFT_PAREN expression RIGHT_PAREN body ;

for_definition : FOR LEFT_PAREN (definition | assignment) SEMI expression SEMI (increment | decrement ) RIGHT_PAREN body ;

code : (line | if_definition | while_definition | for_definition)*;

body : LEFT_BRACE code RIGHT_BRACE;

access_modifier : (PUBLIC | PRIVATE | PROTECTED )?;

method : access_modifier type WORD LEFT_PAREN ( (type WORD) | (type WORD (COMMA type WORD))*)?  RIGHT_PAREN  body;

class : access_modifier WORD LEFT_BRACE (class | method)* RIGHT_BRACE;

// lexer rules

LEFT_PAREN : '(';
RIGHT_PAREN : ')';

LEFT_BRACE : '{';
RIGHT_BRACE : '}';

RETURN : 'return';

PRIVATE : 'private';
PUBLIC : 'public';
PROTECTED : 'protected';

IF : 'if';
ELSE : 'else';

LESS : '<';
LESS_EQUAL : '<=';
GREATER : '>';
GREATER_EQUAL : '>=';
EXCLAMATION : '!';

WHILE : 'while';
FOR : 'for';

CLASS : 'class';

T_BOOLEAN : 'boolean';
T_INT : 'int';
T_STRING : 'String';
T_DOUBLE : 'Double';

// operators

ASSIGN : '=';

// math
PLUS : '+';
MINUS : '-';
MUL : '*';
DIV : '/';

// logic
ANDAND : '&&';
OROR : '||';
EQUAL : '==';
NOT_EQUAL : '!=';

SEMI : ';';
COMMA : ',';
QUOT : '"';
DOT : '.';

// skip
WHITESPACE : (' ' | '\t')+ -> skip;
NEWLINE : ('\r''\n'? | '\n') -> skip;
BLOCKCOMMENT : '/*' .*? '*/' -> skip;
LINECOMMENT : '//' ~[\r\n]* -> skip;

WORD : LOWERCASE LOWERCASE*;

NUMBER : (NON_ZERO_DIGIT DIGIT*) | DIGIT;
V_DOUBLE : NUMBER DOT NUMBER;
V_BOOLEAN : TRUE_FALSE;
V_INT : NUMBER;
V_STRING : QUOT WORD QUOT;

fragment
TRUE_FALSE : 'true' | 'not_true';

fragment
DIGIT : [0-9];

fragment
NON_ZERO_DIGIT : [1-9];

fragment
LOWERCASE : [a-z];
UPPERCASE : [A-Z];



