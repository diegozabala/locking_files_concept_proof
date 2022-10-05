lexer grammar TestLengthFromXUpToYChar_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

/* Note: We haven't coded rules for all numbers 
but we should add the rule here first before using the rule in another grammar  */

CELL_FROM_001_UP_TO_002_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_FROM_003_UP_TO_004_CHAR
    :
    CELL_FROM_001_UP_TO_002_CHAR
    FromOneUpToTwoChar
    ;

CELL_FROM_005_UP_TO_008_CHAR
    :
    CELL_FROM_003_UP_TO_004_CHAR
    FromOneUpToFourChar
    ;

CELL_FROM_009_UP_TO_016_CHAR
    :
    CELL_FROM_005_UP_TO_008_CHAR
    FromOneUpToEightChar
    ;

CELL_FROM_017_UP_TO_032_CHAR
    :
    CELL_FROM_009_UP_TO_016_CHAR
    FromOneUpToSixteenChar
    ;

CELL_FROM_033_UP_TO_064_CHAR
    :
    CELL_FROM_017_UP_TO_032_CHAR
    FromOneUpToThirtyTwoChar
    ;

CELL_FROM_065_UP_TO_128_CHAR
    :
    CELL_FROM_033_UP_TO_064_CHAR
    FromOneUpToSixtyFourChar
    ;

CELL_MORE_THAN_OR_EQUAL_129_CHAR
    : 
    CELL_FROM_065_UP_TO_128_CHAR
    OneOrMoreThanOneChar
    ;
