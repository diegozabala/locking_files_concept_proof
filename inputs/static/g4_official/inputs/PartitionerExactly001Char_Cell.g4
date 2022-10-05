grammar PartitionerExactly001Char_Cell;

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
    CELL_EXACTLY_001_CHAR
    | CELL_MORE_THAN_OR_EQUAL_002_CHAR
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_EXACTLY_001_CHAR
    : 
    Char
    ;

CELL_MORE_THAN_OR_EQUAL_002_CHAR
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