grammar PartitionerStartsWithKeywordPipThenDelimiterStringThenOneNonDelimiter_Cell;

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
    CELL_STARTS_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING_THEN_ONE_NON_DELIMITER
    | CELL_NOT_START_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING_THEN_ONE_NON_DELIMITER
    ;

cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_STARTS_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING_THEN_ONE_NON_DELIMITER
    :
    KeywordPip  // Note: proposed standard for 'markings'
    DELIMITER_STRING
    NON_DELIMITER
    ANY_STRING*
    ;

CELL_NOT_START_WITH_KEYWORD_PIP_THEN_DELIMITER_STRING_THEN_ONE_NON_DELIMITER
    :
    ANY_STRING
    ;

DELIMITER_STRING
    :
    HyphenAndOrSpaceString
    ;

NON_DELIMITER
    :
    NonHyphenOrSpace
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
        | NON_DELIMITER
    )+
    ;

//lexer fragment rules

fragment HyphenAndOrSpaceString
    :
    (   
        Hyphen
        | Space
    )+
    ;

fragment KeywordPip
    :
    'PIP'
    ;

//lexer terminal rules

fragment Space
    :
    '\u0020'
    ;

fragment Hyphen
    :
    '-'
    ;

fragment NonHyphenOrSpace
    :
    ~(
        '\u0020'   
        | '-'
    )
    ;