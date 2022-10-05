grammar SegmenterDelimiterLeftRemover;

/* this grammar doesn't identify all foLines that are out of scope: the LINES_OUT_OF_SEGMENTER_SCOPE token type should also include tags that don't start with any hyphen*/

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LINE_OUT_OF_SEGMENTER_SCOPE
    | DELIMITERS_CONSECUTIVE
    | SEGMENT_NON_DELIMITED
    | END_OF_LINE
    ;

////Lexer Rules

LINE_OUT_OF_SEGMENTER_SCOPE
// this token type should also include tags that don't start with any hyphen
    : 
    CharContentNonHyphen+
    END_OF_LINE
    ;

DELIMITERS_CONSECUTIVE
    :
    Delimiter+
    ;

SEGMENT_NON_DELIMITED
    :
    CharContentNonHyphen
    CharContent+
    ;

END_OF_LINE 
    :  
    CharContainer
    | WindowsNewLine
    ;

//fragment lexer rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

//lexer terminal rules

fragment Delimiter
    :
    Hyphen
    ;

fragment Hyphen
    :
    '-'
    ;

fragment CarriageReturn
    :  
    '\r'
    ;

fragment LineFeed
    :  
    '\n'
    ;

fragment NotCarriageReturnOrLineFeed
    : 
    ~(
        '\n' 
        | '\r'
    )
    ;

fragment CharContent
    :
    NotCarriageReturnOrLineFeed
    ;

fragment CharContainer 
    :   
    LineFeed 
    | CarriageReturn
    ;

fragment NotCarriageReturnOrLineFeedOrHyphen
    :
    ~(
        '\n' 
        | '\r'
        | '-'
    )  
    ;

fragment CharContentNonHyphen
    :
    NotCarriageReturnOrLineFeedOrHyphen
    ;