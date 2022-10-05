grammar PartitionerBetween001And004Char_Cell;

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :  
    cellContentExpected
    | cellContentUnexpected
    ;
    
cellContentExpected
    :
    CELL_FROM_001_UP_TO_004_CHAR
    | CELL_MORE_THAN_OR_EQUAL_005_CHAR
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_FROM_001_UP_TO_004_CHAR
    : 
    FromOneUpToFourChar
    ;

CELL_MORE_THAN_OR_EQUAL_005_CHAR
    : 
    CELL_FROM_001_UP_TO_004_CHAR
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