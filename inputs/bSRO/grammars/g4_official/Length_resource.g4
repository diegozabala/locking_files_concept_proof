grammar Length_resource;

/* This resource grammar is based on the Container_resource grammar  */

/* We haven't coded rules for all numbers but we should add the rule
here first before using the rule in another grammar  */

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
    foLineContent?
    END_OF_LINE
    ;

foLineContent // the following examples show patterns for between and exactly, where "exactly" is an edge case for "between"
    :
    LESS_THAN_004_CHAR
    | EXACTLY_004_CHAR
    | EXACTLY_005_CHAR 
    | EXACTLY_006_CHAR
    | EXACTLY_007_CHAR
    | EXACTLY_008_CHAR
    | EXACTLY_009_CHAR
    | EXACTLY_010_CHAR
    | BETWEEN_011_AND_016_CHAR
    | BETWEEN_017_AND_032_CHAR
    | BETWEEN_033_AND_064_CHAR
    | BETWEEN_065_AND_128_CHAR
    | MORE_THAN_OR_EQUAL_129_CHAR
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

EXACTLY_005_CHAR
    : 
    FromOneUpToFourChar
    CharContent?
    ;

EXACTLY_006_CHAR
    : 
    FromOneUpToFourChar
    FromOneUpToTwoChar
    ;

EXACTLY_007_CHAR
    : 
    FromOneUpToFourChar
    FromOneUpToTwoChar
    CharContent?    
    ;

EXACTLY_008_CHAR
    : 
    FromOneUpToEightChar
    ;

EXACTLY_009_CHAR
    : 
    FromOneUpToEightChar
    CharContent?  
    ;

EXACTLY_010_CHAR
    : 
    FromOneUpToEightChar
    FromOneUpToTwoChar
    ;

BETWEEN_011_AND_016_CHAR
    : 
    FromOneUpToSixteenChar
    ;

BETWEEN_017_AND_032_CHAR
    : 
    FromOneUpToThirtyTwoChar
    ;

BETWEEN_033_AND_064_CHAR
    : 
    FromOneUpToSixtyFourChar
    ;

BETWEEN_065_AND_128_CHAR
    : 
    FromOneUpToOneHundredAndTwentyEightChar
    ;

MORE_THAN_OR_EQUAL_129_CHAR
    : 
    FromOneUpToOneHundredAndTwentyEightChar
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

fragment FromOneUpToThirtyTwoChar
    : 
    FromOneUpToSixteenChar
    FromOneUpToSixteenChar?
    ;

fragment FromOneUpToSixtyFourChar
    : 
    FromOneUpToThirtyTwoChar
    FromOneUpToThirtyTwoChar?
    ;

fragment FromOneUpToOneHundredAndTwentyEightChar
    : 
    FromOneUpToSixtyFourChar
    FromOneUpToSixtyFourChar?
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


