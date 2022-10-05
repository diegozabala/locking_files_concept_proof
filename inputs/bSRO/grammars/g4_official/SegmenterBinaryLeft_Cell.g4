grammar SegmenterBinaryLeft_Cell;

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
    cellWithSegmentLeftNonemptyThenDelimiterStringThenSegmentRightNonempty
    | cellWithSegmentLeftNonemptyThenDelimiterStringOnly
    ;

cellContentUnexpected
    :
    cellStartsWithDelimiterString
    | cellWithNonDelimiterStringOnly 
    | cellEmpty
    ;

cellWithSegmentLeftNonemptyThenDelimiterStringThenSegmentRightNonempty
    :
    segmentLeftNonempty
    delimiterStringThenSegmentRightNonempty
    ;

segmentLeftNonempty
    :
    NON_DELIMITER_STRING
    ;

delimiterStringThenSegmentRightNonempty
    :
    delimiterString
    segmentRightNonempty
    ;

segmentRightNonempty
    :
    NON_DELIMITER_STRING
    (   
        NON_DELIMITER_STRING
        | DELIMITER_STRING
    )*
    ;

cellWithSegmentLeftNonemptyThenDelimiterStringOnly
    :
    segmentLeftNonempty
    delimiterString
    ;

cellStartsWithDelimiterString
    :
    DELIMITER_STRING
    (
        NON_DELIMITER_STRING
        | DELIMITER_STRING
    )*
    ;

delimiterString
    :
    DELIMITER_STRING
    ;

cellWithNonDelimiterStringOnly
    :
    NON_DELIMITER_STRING
    ;

cellEmpty
    :
    EOF
    ;

////Lexer Rules

NON_DELIMITER_STRING
    : 
    NonDelimiter+
    ;

DELIMITER_STRING
    :
    HyphenAndOrSpaceString
    ;

//lexer fragment rules

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

fragment NonSpaceOrHyphen
    :
    ~(
        '\u0020'
        | '-'
    )
    ;

fragment NonDelimiter
    :
    NonSpaceOrHyphen
    ;