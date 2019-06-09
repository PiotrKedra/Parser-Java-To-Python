grammar Java;

// parser rules


logical : V_BOOLEAN | V_INT | word | (left_paren expression right_paren);

var_type : T_BOOLEAN | T_INT | T_STRING | T_DOUBLE | T_VOID;
value : V_DOUBLE | V_STRING | V_BOOLEAN | V_INT;
comperator : LESS | LESS_EQUAL | GREATER | GREATER_EQUAL | EQUAL | NOT_EQUAL ;
and_operator : ANDAND;
or_operator : OROR;
logic_operator : and_operator | or_operator;

operator : PLUS | MINUS | DIV | MUL;

word :WORD;
assign : ASSIGN;
exclamtion : EXCLAMATION;
plus : PLUS;
minus : MINUS;
left_paren :LEFT_PAREN;
right_paren : RIGHT_PAREN;
return_kw : RETURN;
if_kw : IF;
else_kw : ELSE;
right_brace : RIGHT_BRACE;
left_brace : LEFT_BRACE;
class_kw : CLASS;
static_kw : STATIC;
for_kw : FOR;
while_kw : WHILE;
semi_sign : SEMI;
comma_sign : COMMA;

operation : (word | value) ( operator (word|value))*;

assigne : assign operation;

assignment : word assigne;

definition : var_type word;

declaration : definition assigne;

increment : plus plus word;

decrement : minus minus word;

expression : exclamtion expression
	| logical
	| logical comperator logical
	|expression logic_operator expression;

return_def: return_kw (word | value | operation | expression);

line : (definition | declaration | assignment| return_def ) semi_sign;


if_definition : if_kw logical  body
                (else_kw if_kw logical body )*
                (else_kw  logical body )?;

while_definition : while_kw logical body ;

for_index_virable : T_INT WORD ASSIGN T_INT;
for_condition : (WORD|V_INT) comperator (WORD|V_INT);
//for_definition : for_kw left_paren (declaration | assignment)* semi_sign expression semi_sign (increment | decrement ) right_paren body ;
for_definition : for_kw left_paren for_index_virable semi_sign for_condition semi_sign (increment | decrement ) right_paren body ;

code : (line | if_definition | while_definition | for_definition)*;

body : left_brace code right_brace;

access_modifier : (PUBLIC | PRIVATE | PROTECTED )?;

method_params: ( (var_type word) | (var_type word (comma_sign var_type word))*)?;
method : access_modifier var_type word left_paren method_params  right_paren  body;

static_method : access_modifier static_kw var_type word left_paren ( (var_type word) | (var_type word (comma_sign var_type word))*)? right_paren  body;

class_def : access_modifier class_kw word left_brace (class_def | method | static_method)* right_brace;


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



