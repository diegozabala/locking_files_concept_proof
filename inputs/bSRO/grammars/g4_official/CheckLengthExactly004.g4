grammar CheckLengthExactly004;

// In the body of the rules, the char name is intended to refer to char content and exclude char container

/* Design note: length counts every character apart from container 
infrastructure */

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    MORE_THAN_OR_EQUAL_005_CHAR
    | EXACTLY_004_CHAR
    | LESS_THAN_004_CHAR
    | END_OF_LINE 
    ;

////Lexer Rules
    
LESS_THAN_004_CHAR
    :
    FromOneUpToTwoChar
    CharContent?
    ;

EXACTLY_004_CHAR
    : 
    FromOneUpToFourChar
    ;

MORE_THAN_OR_EQUAL_005_CHAR
    :
    FromOneUpToFourChar
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

fragment FromOneUpToTwoChar
    : 
    CharContent
    CharContent?
    ;

fragment FromOneUpToFourChar
    : 
    FromOneUpToTwoChar
    FromOneUpToTwoChar?
    ;

//lexer terminal rules

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