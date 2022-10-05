grammar PartitionerStartsWithKeywordD015_Cell;

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
    CELL_STARTS_WITH_KEYWORD_D015
    | CELL_NOT_START_WITH_KEYWORD_D015
    ;

cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_STARTS_WITH_KEYWORD_D015
    :
    KeywordD015 
    ANY_STRING*
    ;

CELL_NOT_START_WITH_KEYWORD_D015
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
        KeywordD015
        | Char
    )+
    ;

//lexer fragment rules

fragment KeywordD015
    :
    'D015'
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;