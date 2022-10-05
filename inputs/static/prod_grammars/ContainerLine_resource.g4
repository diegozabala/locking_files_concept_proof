grammar ContainerLine_resource;

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    NON_EMPTY_LINE
    | END_OF_LINE
    ;

////Lexer Rules

NON_EMPTY_LINE
    :
    CharContent+
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

fragment LineFeed
    : 
    '\n'
    ;

fragment CarriageReturn
    : 
    '\r'
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