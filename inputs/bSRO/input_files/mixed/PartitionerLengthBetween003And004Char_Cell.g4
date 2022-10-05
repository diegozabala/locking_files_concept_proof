grammar PartitionerLengthBetween003And004Char_Cell;

/* Design note: length counts every character apart from container 
infrastructure */

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
    CELL_LESS_THAN_THREE_CHAR
    | CELL_BETWEEN_THREE_AND_FOUR_CHAR
    | CELL_MORE_THAN_OR_EQUAL_FIVE_CHAR
    ;
    
cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_LESS_THAN_THREE_CHAR //AGu: update the length grammar token names with CELL
    : 
    FromOneUpToTwoChar
    ;

CELL_BETWEEN_THREE_AND_FOUR_CHAR
    : 
    FromOneUpToFourChar
    ;

CELL_MORE_THAN_OR_EQUAL_FIVE_CHAR
    : 
    CELL_BETWEEN_THREE_AND_FOUR_CHAR
    Char+
    ;

CELL_EMPTY
    :
    EOF
    ;    

// fragment lexer rules

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