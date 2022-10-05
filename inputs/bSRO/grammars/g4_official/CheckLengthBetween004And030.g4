grammar CheckLengthBetween004And030;

/* Design note: length counts every character apart from container 
infrastructure */
// In the name of the rules, "char" is intended to refer to char content and exclude char container
////Parser Rules

foCharStream
    :
    foLine*
    EOF
    ;

foLine
    :
    LESS_THAN_004_CHAR   
    | FROM_004_UP_TO_030_CHAR 
    | MORE_THAN_OR_EQUAL_031_CHAR
    | END_OF_LINE
    ;

////Lexer Rules

LESS_THAN_004_CHAR
    : 
    FromOneUpToTwoChar
    CharContent?
    ;

FROM_004_UP_TO_030_CHAR
    : 
    FromOneUpToTwoChar
    FromOneUpToFourChar?
    FromOneUpToEightChar?
    FromOneUpToSixteenChar?
    ;

MORE_THAN_OR_EQUAL_031_CHAR
    : 
    FROM_004_UP_TO_030_CHAR
    CharContent+
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

// fragment lexer rules

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

fragment FromOneUpToEightChar
    : 
    FromOneUpToFourChar
    FromOneUpToFourChar?
    ;

fragment FromOneUpToSixteenChar
    : 
    FromOneUpToEightChar
    FromOneUpToEightChar?
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