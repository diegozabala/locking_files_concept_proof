grammar PartitionerUnitSegmentSingleUnderscore_Cell;
// this does not handle the case of multiple underscore
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
    CELL_WITH_UNIT_SEGMENT
    | CELL_WITH_NON_UNIT_SEGMENT
    ;

cellContentUnexpected
    :
    CELL_STARTS_WITH_DELIMITER_STRING
    | CELL_EMPTY
    ;

////Lexer Rules

CELL_WITH_UNIT_SEGMENT
    :
    NonDelimiterString
    ;

CELL_STARTS_WITH_DELIMITER_STRING
    :
    DelimiterString
    (   DelimiterString             
        | NonDelimiterString
    )*
    ;

CELL_WITH_NON_UNIT_SEGMENT
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
    Underscore
    ;

//lexer terminal rules

fragment Underscore
    :
    '_'
    ;

fragment NonUnderscore
    :
    ~(
        '_'
    )
    ;

fragment NonDelimiter // we are assuming delimiter partition: characters are either delimiter or non delimiter
    :
    NonUnderscore
    ;