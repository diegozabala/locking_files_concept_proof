grammar PartitionerStartsWithKeywordPipThenDelimiterString_Cell;

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
    CELL_STARTS_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING
    | CELL_NOT_START_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING
    ;

cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_STARTS_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING
    :
    KeywordPip 
    DELIMITER_STRING
    ANY_STRING*
    ;

CELL_NOT_START_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING
    :
    ANY_STRING
    ;

DELIMITER_STRING
    :
    HyphenAndOrSpaceString
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
    (   
        KeywordPip
        | DELIMITER_STRING
        | Char
    )+
    ;

//lexer fragment rules

fragment HyphenAndOrSpaceString // this defines the content - this is being reused above as part of the delimiter function
    :
    (   
        Hyphen
        | Space
    )+
    ;

//lexer terminal rules

fragment KeywordPip
    :
    'PIP' 
    ;

fragment Space
    :
    '\u0020'
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Char
    :
    .
    ;