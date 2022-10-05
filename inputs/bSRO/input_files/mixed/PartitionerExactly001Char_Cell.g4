grammar PartitionerExactly001Char_Cell;

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell // from AGu: should we transform the lexer rules below into parser rules so that we have readible contexts?
    :  
    cellNonempty
    | cellEmpty
    ;

cellNonempty
    :
    CELL_EXACTLY_ONE_CHAR
    | CELL_MORE_THAN_OR_EQUAL_TWO_CHAR
    ;
    
cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_EXACTLY_ONE_CHAR
    : 
    Char
    ;

CELL_MORE_THAN_OR_EQUAL_TWO_CHAR
    :
    Char
    Char+
    ;

CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

//lexer terminal rules

fragment Char
    :
    .
    ;