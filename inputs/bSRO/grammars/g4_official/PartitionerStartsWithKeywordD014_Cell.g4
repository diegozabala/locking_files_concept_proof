grammar PartitionerStartsWithKeywordD014_Cell;

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
    CELL_STARTS_WITH_KEYWORD_D014
    | CELL_NOT_START_WITH_KEYWORD_D014
    ;

cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_STARTS_WITH_KEYWORD_D014
    :
    KeywordD014 
    ANY_STRING*
    ;

CELL_NOT_START_WITH_KEYWORD_D014
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
        KeywordD014
        | Char
    )+
    ;

//lexer fragment rules

fragment KeywordD014
    :
    'D014'
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;