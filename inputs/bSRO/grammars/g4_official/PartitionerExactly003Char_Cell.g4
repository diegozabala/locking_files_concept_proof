grammar PartitionerExactly003Char_Cell;

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
    CELL_LESS_THAN_003_CHAR
    | CELL_EXACTLY_003_CHAR
    | CELL_MORE_THAN_OR_EQUAL_004_CHAR
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_LESS_THAN_003_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_EXACTLY_003_CHAR
    : 
    FromOneUpToTwoChar
    Char?
    ;

CELL_MORE_THAN_OR_EQUAL_004_CHAR
    :
    CELL_EXACTLY_003_CHAR
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