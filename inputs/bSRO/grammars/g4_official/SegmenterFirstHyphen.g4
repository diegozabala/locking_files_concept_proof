grammar SegmenterFirstHyphen;

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LEFT_OF_FIRST_HYPHEN
    | RIGHT_OF_FIRST_HYPHEN_INCLUDING_HYPHEN
    | END_OF_LINE
    ;

////Lexer Rules

LEFT_OF_FIRST_HYPHEN
    : 
    CharContentNonHyphen+
    ;

RIGHT_OF_FIRST_HYPHEN_INCLUDING_HYPHEN
    : 
    HYPHEN
    CONTENT_INCLUDING_HYPHEN*
    ;

CONTENT_INCLUDING_HYPHEN 
    : 
    CharContentNonHyphen
    | HYPHEN
    ;

HYPHEN
    :
    '-'
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

fragment CarriageReturn
    :  
    '\r'
    ;

fragment LineFeed
    :  
    '\n'
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