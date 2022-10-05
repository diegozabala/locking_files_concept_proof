grammar OLD_Length_resource_Cell;

/* We haven't coded rules for all numbers but we should add the rule
here first before using the rule in another grammar  */

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :  
    cellContentExpected
    | cellContentUnexpected
    ;

cellContentExpected // the following examples show patterns for "from X up to Y" and exactly, where "from X up to Y" is an edge case for "between"
    :
    CELL_LESS_THAN_003_CHAR
    | CELL_EXACTLY_003_CHAR
    | CELL_EXACTLY_004_CHAR
    | CELL_EXACTLY_005_CHAR 
    | CELL_EXACTLY_006_CHAR
    | CELL_EXACTLY_007_CHAR
    | CELL_EXACTLY_008_CHAR
    | CELL_EXACTLY_009_CHAR
    | CELL_EXACTLY_010_CHAR
    | CELL_FROM_011_UP_TO_016_CHAR
    | CELL_FROM_017_UP_TO_032_CHAR
    | CELL_FROM_033_UP_TO_064_CHAR
    | CELL_FROM_065_UP_TO_128_CHAR
    | CELL_MORE_THAN_OR_EQUAL_129_CHAR
    ;

cellContentUnexpected
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_LESS_THAN_003_CHAR
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

CELL_FROM_011_UP_TO_016_CHAR
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

CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

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