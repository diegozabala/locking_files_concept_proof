grammar CheckLengthLessThan031;

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
    MORE_THAN_OR_EQUAL_031_CHAR 
    | LESS_THAN_031_CHAR
    | END_OF_LINE
    ;

////Lexer Rules

LESS_THAN_031_CHAR
    : 
    FromOneUpToTwoChar
    FromOneUpToFourChar?
    FromOneUpToEightChar?
    FromOneUpToSixteenChar?
    ;

MORE_THAN_OR_EQUAL_031_CHAR
    : 
    LESS_THAN_031_CHAR
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