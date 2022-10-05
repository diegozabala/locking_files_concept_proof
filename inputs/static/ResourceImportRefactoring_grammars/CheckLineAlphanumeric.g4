grammar CheckLineAlphanumeric;

////Import
//CharacterLetterCaseInsensitiveRangeChar_resource
//CharacterDigitRangeChar_resource
//ContainerLine_resource


foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LINE_ALPHANUMERIC
    | NON_EMPTY_LINE
    | END_OF_LINE
    ;

////Lexer Rules

LINE_ALPHANUMERIC
    :
    ALPHANUMERIC+
    ;

NON_EMPTY_LINE
    :
    CharContent+
    ;

ALPHANUMERIC
    : 
    LetterCaseInsensitive
    | Digit
    ;

NOT_ALPHANUMERIC
    :
    CharContent
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

//Lexer Fragment Rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

//lexer terminal rules

fragment LineFeed
    : 
    '\n'
    ;

fragment CarriageReturn
    : 
    '\r'
    ;
   
fragment LetterCaseInsensitive
    :
    [a-z]
    | [A-Z]
    ;

fragment Digit
    :
    [0-9]
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