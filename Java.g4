grammar Java;

// parser rules


logical : V_BOOLEAN | V_INT | WORD | (LEFT_PAREN expression RIGHT_PAREN);

var_type : T_BOOLEAN | T_INT | T_STRING | T_DOUBLE | T_VOID;
value : V_DOUBLE | V_STRING | V_BOOLEAN | V_INT;
comperator : LESS | LESS_EQUAL | GREATER | GREATER_EQUAL | EQUAL | NOT_EQUAL ;
logic_operator : ANDAND | OROR;
operator : PLUS | MINUS | DIV | MUL;

operation : (WORD | value) ( operator (WORD|value))*;

assigne : ASSIGN operation;

assignment : WORD assigne;

definition : var_type WORD;

declaration : definition assigne;

increment : PLUS PLUS WORD;

decrement : MINUS MINUS WORD;

expression : EXCLAMATION expression
	| logical
	| logical comperator logical
	|expression logic_operator expression;

return_def: RETURN (WORD | value | operation | expression);

line : (definition | declaration | assignment| return_def ) SEMI;


if_definition : IF LEFT_PAREN expression RIGHT_PAREN body
                (ELSE IF LEFT_PAREN expression RIGHT_PAREN body )*
                (ELSE LEFT_PAREN expression RIGHT_PAREN body )?;

while_definition : WHILE LEFT_PAREN expression RIGHT_PAREN body ;

for_definition : FOR LEFT_PAREN (declaration | assignment)* SEMI expression SEMI (increment | decrement ) RIGHT_PAREN body ;

code : (line | if_definition | while_definition | for_definition)*;

body : LEFT_BRACE code RIGHT_BRACE;

access_modifier : (PUBLIC | PRIVATE | PROTECTED )?;

method : access_modifier STATIC? var_type WORD LEFT_PAREN ( (var_type WORD) | (var_type WORD (COMMA var_type WORD))*)?  RIGHT_PAREN  body;

class_def : access_modifier CLASS WORD LEFT_BRACE (class_def | method)* RIGHT_BRACE;


// lexer rules

LEFT_PAREN : '(';
RIGHT_PAREN : ')';

LEFT_BRACE : '{';
RIGHT_BRACE : '}';

RETURN : 'return';

STATIC : 'static';

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
T_DOUBLE : 'double';
T_VOID : 'void';

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


V_INT : NUMBER;
NUMBER : (NON_ZERO_DIGIT DIGIT*) | DIGIT;
V_DOUBLE : NUMBER DOT NUMBER;
V_BOOLEAN : TRUE_FALSE;
V_STRING : QUOT WORD QUOT;

WORD : LOWERCASE LOWERCASE*;

fragment
TRUE_FALSE : 'true' | 'false';

fragment
DIGIT : [0-9];

fragment
NON_ZERO_DIGIT : [1-9];

fragment
LOWERCASE : [a-z];
UPPERCASE : [A-Z];



