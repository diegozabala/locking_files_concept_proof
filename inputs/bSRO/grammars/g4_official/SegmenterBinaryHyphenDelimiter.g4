grammar SegmenterBinaryHyphenDelimiter;

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LINE_OUT_OF_SEGMENTER_SCOPE
    | SEGMENT_BINARY_LEFT
    | SEGMENT_BINARY_RIGHT_LEFT_DELIMITED
    | END_OF_LINE
    ;

////Lexer Rules

LINE_OUT_OF_SEGMENTER_SCOPE
    : 
    CharContentNonHyphen+
    END_OF_LINE
    ;

SEGMENT_BINARY_LEFT
    : 
    CharContentNonHyphen+
    ;

SEGMENT_BINARY_RIGHT_LEFT_DELIMITED
    : 
    Delimiter
    CharContent*
    ;

END_OF_LINE 
    :  
    CharContainer
    | WindowsNewLine
    ;

//lexer fragment rules

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

fragment CharContainer 
    :   
    LineFeed 
    | CarriageReturn
    ;