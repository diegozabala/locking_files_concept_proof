grammar SegmenterBinaryLeftSingleUnderscoreDelimiter;

////Parser Rules

foCharStream
    :
    foCell?
    EOF
    ;

foCell
    :
    cellContentWellFormed
    | cellContentIllFormed
    ;

cellContentWellFormed
    :
    cellWithLeftAndRightSegment
    | cellWithLeftSegmentOnly
    ;

cellContentIllFormed
    :
    cellStartsWithDelimiterString   // NOTE: Only ill formed if empty segments not allowed
    | cellWithLeftSegmentThenDelimiterOnly 
    | cellEmpty
    ;

cellWithLeftAndRightSegment
    :
    segmentLeft
    delimiterStringThenSegmentRightNonempty
    ;

segmentLeft
    :
    NON_DELIMITER_STRING
    ;

delimiterStringThenSegmentRightNonempty
    :
    delimiterEndOfLeftSegment
    segmentRight
    ;

segmentRight
    :
    NON_DELIMITER_STRING
    (   
        NON_DELIMITER_STRING
        | DELIMITER_STRING
    )*
    ;

cellWithLeftSegmentThenDelimiterOnly
    :
    segmentLeft
    delimiterEndOfLeftSegment
    ;

cellStartsWithDelimiterString
    :
    DELIMITER_STRING
    (
        NON_DELIMITER_STRING
        | DELIMITER_STRING
    )*
    ;

delimiterEndOfLeftSegment   // NOTE: Check this works
    :
    DELIMITER_STRING
    ;

cellWithLeftSegmentOnly
    :
    segmentLeft
    ;

cellEmpty
    :
    EOF
    ;

// NOTE: Use Import from here onwards - see Justin
////Lexer Rules

NON_DELIMITER_STRING
    : 
    NonDelimiter+
    ;

DELIMITER_STRING // NOTE: only single underscore allowed
    :
    Underscore
    ;

//lexer fragment rules
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

fragment NonDelimiter
    :
    NonUnderscore
    ;