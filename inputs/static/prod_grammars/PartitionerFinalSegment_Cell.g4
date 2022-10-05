grammar PartitionerFinalSegment_Cell;

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
    CELL_WITH_SEGMENT_FINAL
    | CELL_WITH_SEGMENT_NOT_FINAL
    ;

cellContentUnexpected
    :
    CELL_STARTS_WITH_DELIMITER_STRING
    | CELL_EMPTY
    ;

////Lexer Rules

CELL_WITH_SEGMENT_FINAL
    :
    NonDelimiterString
    ;

CELL_STARTS_WITH_DELIMITER_STRING
    :
    DelimiterString
    NonDelimiterString
    (   DelimiterString             
        | NonDelimiterString
    )*
    ;

CELL_WITH_SEGMENT_NOT_FINAL
    :
    NonDelimiterString
    DelimiterString
    (
        NonDelimiterString
        | DelimiterString
    )*
    ;

CELL_EMPTY
    :
    EOF
    ;

//lexer fragment rules

fragment NonDelimiterString
    : 
    NonDelimiter+
    ;

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

//lexer terminal rules

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
    ;

fragment NonHyphenOrSpace
    :
    ~(
        '\u0020'
        | '-'
    )
    ;

fragment NonDelimiter // we are assuming delimiter partition: characters are either delimiter or non delimiter
    :
    NonHyphenOrSpace
    ;