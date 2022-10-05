grammar PartitionerExactly003Char_Cell;

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
    CELL_EXACTLY_THREE_CHAR
    | CELL_MORE_THAN_OR_EQUAL_FOUR_CHAR
    | CELL_LESS_THAN_THREE_CHAR
    ;
    
cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_LESS_THAN_THREE_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_EXACTLY_THREE_CHAR
    : 
    FromOneUpToTwoChar
    Char?
    ;

CELL_MORE_THAN_OR_EQUAL_FOUR_CHAR
    :
    CELL_EXACTLY_THREE_CHAR
    Char+
    ;

CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

fragment FromOneUpToTwoChar
    : 
    Char
    Char?
    ;

fragment FromOneUpToFourChar
    : 
    FromOneUpToTwoChar
    FromOneUpToTwoChar?
    ;
//lexer terminal rules

fragment Char
    :
    .
    ;