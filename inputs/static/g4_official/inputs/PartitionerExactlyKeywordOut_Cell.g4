grammar PartitionerExactlyKeywordOut_Cell;

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
    CELL_EXACTLY_KEYWORD_OUT
    | CELL_NOT_EXACTLY_KEYWORD_OUT
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_EXACTLY_KEYWORD_OUT
    :
    KeywordOut
    ;

CELL_NOT_EXACTLY_KEYWORD_OUT
    :
    ANY_STRING
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
    (
        KeywordOut
        | Char
    )+
    ;

//lexer fragment rules

fragment KeywordOut // @Justin, @Andy - is this a terminal rule?
    :
    'OUT'
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;