grammar PartitionerBetween001And005Char_Cell;

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
    CELL_FROM_001_UP_TO_005_CHAR
    | CELL_MORE_THAN_OR_EQUAL_006_CHAR
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_FROM_001_UP_TO_005_CHAR
    : 
    FromOneUpToFourChar
    Char?
    ;

CELL_MORE_THAN_OR_EQUAL_006_CHAR
    : 
    CELL_FROM_001_UP_TO_005_CHAR
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