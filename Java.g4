grammar Java;


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

WHILE : 'while';
FOR : 'for';

CLASS : 'class';

VOID : 'void';
BOOLEAN : 'boolean';
INT : 'int';
DOUBLE : 'double';
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

// skip
WHITESPACE : (' ' | '\t')+ -> skip;
NEWLINE : ('\r''\n'? | '\n') -> skip;
BLOCKCOMMENT : '/*' .*? '*/' -> skip;
LINECOMMENT : '//' ~[\r\n]* -> skip;

fragment
DIGIT : [0-9];

fragment
NON_ZERO_DIGIT : [1-9];

fragment
LOWERCASE : [a-z];
UPPERCASE : [A-Z];



