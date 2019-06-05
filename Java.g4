grammar Java;

// parser rules


atom : BOOLEAN | INT | LEFT_PAREN expression RIGHT_PAREN;

type : BOOLEAN | INT | STRING;

operation : LESS | LESS_EQUAL | GREATER | GREATER_EQUAL | EQUAL | NOT_EQUAL | ANDAND | OROR;

int_definition : INT WORD;
boolean_definition : BOOLEAN WORD;
string_definition : STRING WORD;

int_assigne : ASSIGN NUMBER SEMI;
boolean_assigne : ASSIGN BOOL_VALUE SEMI;
string_assigne : ASSIGN QUOT WORD QUOT SEMI;

int_increment : PLUS PLUS WORD;

declaration : (int_definition int_assigne) |
                (boolean_definition boolean_assigne) |
                (string_definition string_assigne);

expression : EXCLAMATION expression
	| atom operation atom
	| atom;

line : declaration SEMI;

code : (line | if_definition | while_definition | for_definition)*;

body : LEFT_BRACE code RIGHT_BRACE;

if_definition : IF LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE
                (ELSE IF LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE)*
                (ELSE LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE)?;

while_definition : WHILE LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE;

for_definition : FOR LEFT_PAREN int_definition int_assigne SEMI expression SEMI int_increment RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE;

access_modifier : (PUBLIC | PRIVATE | PROTECTED |);

method : access_modifier type WORD LEFT_PAREN (type WORD COMMA)* (type WORD) RIGHT_PAREN LEFT_BRACE code RETURN WORD SEMI RIGHT_BRACE;

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

BOOLEAN : 'boolean';
INT : 'int';
STRING : 'String';

// operators

ASSIGN : '=';

// math
PLUS : '+';
MINUS : '-';
STAR : '*';

// logic
ANDAND : '&&';
OROR : '||';
EQUAL : '==';
NOT_EQUAL : '!=';

SEMI : ';';
COMMA : ',';
QUOT : '"';

// skip
WHITESPACE : (' ' | '\t')+ -> skip;
NEWLINE : ('\r''\n'? | '\n') -> skip;
BLOCKCOMMENT : '/*' .*? '*/' -> skip;
LINECOMMENT : '//' ~[\r\n]* -> skip;

WORD : LOWERCASE LOWERCASE*;

NUMBER : (NON_ZERO_DIGIT DIGIT*) | DIGIT;

BOOL_VALUE : TRUE_FALSE;

fragment
TRUE_FALSE : 'true' | 'not_true';

fragment
DIGIT : [0-9];

fragment
NON_ZERO_DIGIT : [1-9];

fragment
LOWERCASE : [a-z];
UPPERCASE : [A-Z];



