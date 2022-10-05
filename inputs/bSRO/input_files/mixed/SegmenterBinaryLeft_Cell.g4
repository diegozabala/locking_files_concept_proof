grammar SegmenterBinaryLeft_Cell;

// this grammar doesn't capture empty lines in an out of scope parser rule
////Parser Rules

// @Anne - for cellWithSegmentLeftNonEmptySegmentRightEmpty, I need to capture the left segment as a context 
// @Anne - when right segments contain delimiter, the delimiter appears as a context => see if this can be avoided

foCharStream
    :
    foCell?
    EOF
    ;

foCell
    :
    inScope
    | outOfScope
    ;

inScope
    :
    cellWithSegmentsLeftAndRightSeparatedByDelimiter
    | cellWithSegmentLeftNonEmptySegmentRightEmpty
    ;

outOfScope
    :
    cellWithSegmentLeftEmptySegmentRightNotEmpty
    | cellWithDelimiterOnly
    | cellNonEmptyWithNoDelimiter
    | cellEmpty
    ;

cellWithSegmentsLeftAndRightSeparatedByDelimiter
    :
    segmentLeft
    segmentRightPlusLeftDelimiter
    ;

segmentLeft
    :
    NON_DELIMITER_STRING
    ;

segmentRightPlusLeftDelimiter
    :
    delimiter
    segmentRight
    ;

segmentRight
    :
    NON_DELIMITER_STRING
    (   
        NON_DELIMITER_STRING
        | delimiter
    )+
    ;

cellWithSegmentLeftNonEmptySegmentRightEmpty
    :
    NON_DELIMITER_STRING
    delimiter
    ;

cellWithSegmentLeftEmptySegmentRightNotEmpty
    :
    delimiter
    NON_DELIMITER_STRING
    (
        NON_DELIMITER_STRING
        | delimiter
    )+
    ;

cellNonEmptyWithNoDelimiter
    :
    NON_DELIMITER_STRING
    ;

cellWithDelimiterOnly
    :
    delimiter
    ;

cellEmpty
    :
    EOF
    ;

delimiter
    :
    DELIMITER
    ;

////Lexer Rules

NON_DELIMITER_STRING
    : 
    NonDelimiter+
    ;

DELIMITER
    :
    MultipleHyphenOrSpace
    ;

fragment MultipleHyphenOrSpace // this defines the content - this is being reused above as part of the delimiter function
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
    ' '
    ;

fragment NonSpaceOrHyphen
    :
    ~(
        ' '
        | '-'
    )
    ;

fragment NonDelimiter
    :
    NonSpaceOrHyphen
    ;