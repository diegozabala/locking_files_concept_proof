grammar CheckLengthLessThan004;

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
    MORE_THAN_OR_EQUAL_004_CHAR 
    | LESS_THAN_004_CHAR
    | END_OF_LINE
    ;

////Lexer Rules

LESS_THAN_004_CHAR
    :
    FromOneUpToTwoChar
    CharContent?
    ;

MORE_THAN_OR_EQUAL_004_CHAR
    :
    LESS_THAN_004_CHAR
    CharContent+
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

//fragment lexer rules

fragment FromOneUpToTwoChar
    : 
    CharContent
    CharContent?
    ;
    
fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
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