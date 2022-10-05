grammar LengthFromXUpToYChar_resource_Cell;

/* We haven't coded rules for all numbers but we should add the rule
here first before using the rule in another grammar  */

foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :
    CELL_EXACTLY_000_CHAR
    | CELL_FROM_001_UP_TO_002_CHAR
    | CELL_FROM_003_UP_TO_004_CHAR
    | CELL_FROM_005_UP_TO_008_CHAR
    | CELL_FROM_009_UP_TO_016_CHAR
    | CELL_FROM_017_UP_TO_032_CHAR
    | CELL_FROM_033_UP_TO_064_CHAR
    | CELL_FROM_065_UP_TO_128_CHAR 
    | CELL_MORE_THAN_OR_EQUAL_129_CHAR
    ;

////Lexer Rules

CELL_EXACTLY_000_CHAR
    :
    CELL_EMPTY
    ; 

CELL_EMPTY
    :
    EndOfFile
    ;

CELL_FROM_001_UP_TO_002_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_FROM_003_UP_TO_004_CHAR
    :
    FromOneUpToFourChar
    ;

CELL_FROM_005_UP_TO_008_CHAR
    :
    FromOneUpToEightChar
    ;

CELL_FROM_009_UP_TO_016_CHAR
    :
    FromOneUpToSixteenChar
    ;

CELL_FROM_017_UP_TO_032_CHAR
    :
    FromOneUpToThirtyTwoChar
    ;

CELL_FROM_033_UP_TO_064_CHAR
    :
    FromOneUpToSixtyFourChar
    ;

CELL_FROM_065_UP_TO_128_CHAR
    :
    FromOneUpToOneHundredAndTwentyEightChar
    ;

CELL_MORE_THAN_OR_EQUAL_129_CHAR
    : 
    FromOneUpToOneHundredAndTwentyEightChar
    Char+
    ;

//lexer fragment rules

fragment EndOfFile
    :
    EOF
    ;   

fragment FromOneUpToTwoChar
    : 
    Char
    Char?
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

fragment Char
    :
    .
    ;