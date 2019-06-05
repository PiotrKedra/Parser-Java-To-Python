grammar Java;

// parser rules

atom : BOOLEAN | INT | LEFT_PAREN expression RIGHT_PAREN;

operation : LESS | LESS_EQUAL | GREATER | GREATER_EQUAL | EQUAL | NOT_EQUAL | ANDAND | OROR;

expression : EXCLAMATION expression
	| atom operation atom
	| atom;


int_definition : INT WORD;
boolean_definition : BOOLEAN WORD;
string_definition : STRING WORD;

declaration : (int_definition EQUAL NUMBER) |
                (boolean_definition EQUAL BOOL_VALUE) |
                (string_definition EQUAL QUOT WORD QUOT);

line : (int_definition | boolean_definition | string_definition) | declaration SEMI;

body : LEFT_BRACE line* RIGHT_BRACE;

if_definition : IF LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE
                (ELSE IF LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE)*
                (ELSE LEFT_PAREN expression RIGHT_PAREN LEFT_BRACE body RIGHT_BRACE)?;

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

VOID : 'void';
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



