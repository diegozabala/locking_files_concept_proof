grammar LengthExactlyXChar_resource_Cell;

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
    | CELL_EXACTLY_001_CHAR
    | CELL_EXACTLY_002_CHAR
    | CELL_EXACTLY_003_CHAR
    | CELL_EXACTLY_004_CHAR
    | CELL_EXACTLY_005_CHAR 
    | CELL_EXACTLY_006_CHAR
    | CELL_EXACTLY_007_CHAR
    | CELL_EXACTLY_008_CHAR
    | CELL_EXACTLY_009_CHAR
    | CELL_EXACTLY_010_CHAR
    | CELL_MORE_THAN_OR_EQUAL_011_CHAR
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

CELL_EXACTLY_001_CHAR
    :
    Char
    ;

CELL_EXACTLY_002_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_EXACTLY_003_CHAR
    : 
    FromOneUpToTwoChar
    Char?
    ;

CELL_EXACTLY_004_CHAR
    : 
    FromOneUpToFourChar
    ;

CELL_EXACTLY_005_CHAR
    : 
    FromOneUpToFourChar
    Char?
    ;

CELL_EXACTLY_006_CHAR
    : 
    FromOneUpToFourChar
    FromOneUpToTwoChar
    ;

CELL_EXACTLY_007_CHAR
    : 
    FromOneUpToFourChar
    FromOneUpToTwoChar
    Char?    
    ;

CELL_EXACTLY_008_CHAR
    : 
    FromOneUpToEightChar
    ;

CELL_EXACTLY_009_CHAR
    : 
    FromOneUpToEightChar
    Char?  
    ;

CELL_EXACTLY_010_CHAR
    : 
    FromOneUpToEightChar
    FromOneUpToTwoChar
    ;

CELL_MORE_THAN_OR_EQUAL_011_CHAR
    : 
    FromOneUpToEightChar
    FromOneUpToTwoChar
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