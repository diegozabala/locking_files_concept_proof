grammar PartitionerFinalSegment_Cell;

////Parser Rules

foCharStream
    :
    foCell?
    EOF
    ;

foCell
    :
    cellSegmentDelimitedExplicitWellformed
    | cellSegmentDelimitedExplicitlyIllformed
    ;

cellSegmentDelimitedExplicitWellformed  //Includes unit and non-unit segment  // Hyphenated Wellformed is a single word
    :
    CELL_WITH_FINAL_SEGMENT
    | CELL_WITH_NON_FINAL_SEGMENT
    ;

cellSegmentDelimitedExplicitlyIllformed // Hyphenated Illformed is a single word
    :
    CELL_STARTING_WITH_DELIMITER_AND_THEN_A_NON_DELIMITER_STRING
    | CELL_WITH_DELIMITER_ONLY
    | CELL_EMPTY
    ;

////Lexer Rules

CELL_WITH_FINAL_SEGMENT
    :
    NON_DELIMITER_STRING
    ;

CELL_STARTING_WITH_DELIMITER_AND_THEN_A_NON_DELIMITER_STRING
    :
    Delimiter
    NON_DELIMITER_STRING
    (   Delimiter             
        | NON_DELIMITER_STRING
    )*
    ;

CELL_WITH_NON_FINAL_SEGMENT
    :
    NON_DELIMITER_STRING
    Delimiter
    (
        NON_DELIMITER_STRING
        | Delimiter
    )*
    ;

CELL_WITH_DELIMITER_ONLY
    :
    Delimiter
    ;

CELL_EMPTY
    :
    EOF
    ;

NON_DELIMITER_STRING
    : 
    NonDelimiter+
    ;

fragment Delimiter
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

fragment NonDelimiter // we are assuming delimiter partition: characters are either delimiter or non delimiter
    :
    NonSpaceOrHyphen
    ;

fragment Char // @Anne - not using, delete?
    :
    .
    ;