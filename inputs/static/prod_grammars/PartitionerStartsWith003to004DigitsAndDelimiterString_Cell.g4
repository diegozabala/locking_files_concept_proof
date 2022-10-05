grammar PartitionerStartsWith003to004DigitsAndDelimiterString_Cell;

// from AGu: would it make sense to rename the grammar as: PartitionerStartsWithExactlyKeywordD014_Cell?

////Parser Rules

foCharStream
    :
    foCell?
    EOF
    ;

foCell
    :  
    cellExpectedContent
    | cellUnexpectedContent
    ;

cellUnexpectedContent
    :
    CELL_EMPTY
    ;

cellExpectedContent 
    :
    CELL_STARTS_WITH_003_TO_004_DIGITS_AND_DELIMITER_STRING
    | CELL_NOT_START_WITH_003_TO_004_DIGITS_AND_DELIMITER_STRING
    ;

 ////Lexer Rules

CELL_STARTS_WITH_003_TO_004_DIGITS_AND_DELIMITER_STRING
    :
    From003UpTo004Digit
    DelimiterString
    ANY_STRING*
    ;

CELL_NOT_START_WITH_003_TO_004_DIGITS_AND_DELIMITER_STRING
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
        Char
        | DelimiterString
        | Digit
    )+
    ;

//lexer fragment rules

fragment DelimiterString
    :
    HyphenAndOrSpaceString
    ;

fragment HyphenAndOrSpaceString
    :
    (   
        Hyphen
        | Space
    )+
    ;

fragment From003UpTo004Digit  // From AGu: not sure of plural => Digits?
    :
    Digit
    Digit
    Digit
    Digit?
    ;

//lexer terminal rules

fragment Digit
    :
    [0-9]
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
    ;

fragment Char
    : 
    .
    ;