lexer grammar TestLengthExactlyXChar_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

/* Note: We haven't coded rules for all numbers 
but we should add the rule here first before using the rule in another grammar  */

CELL_EXACTLY_001_CHAR
    :
    ExactlyOneChar
    ;

CELL_EXACTLY_002_CHAR
    :
    FromOneUpToTwoChar
    ;

CELL_EXACTLY_003_CHAR
    : 
    FromOneUpToThreeChar
    ;

CELL_EXACTLY_004_CHAR
    : 
    FromOneUpToFourChar
    ;

CELL_EXACTLY_005_CHAR
    : 
    FromOneUpToFiveChar
    ;

CELL_EXACTLY_006_CHAR
    : 
    FromOneUpToSixChar
    ;

CELL_EXACTLY_007_CHAR
    : 
    FromOneUpToSevenChar
    ;

CELL_EXACTLY_008_CHAR
    : 
    FromOneUpToEightChar
    ;

CELL_EXACTLY_009_CHAR
    : 
    FromOneUpToNineChar
    ;

CELL_EXACTLY_010_CHAR
    : 
    FromOneUpToTenChar
    ;

CELL_EXACTLY_011_CHAR
    :
    FromOneUpToElevenChar
    ;

CELL_EXACTLY_012_CHAR
    :
    FromOneUpToTwelveChar
    ;

CELL_EXACTLY_013_CHAR
    : 
    FromOneUpToThirteenChar
    ;

CELL_EXACTLY_014_CHAR
    : 
    FromOneUpToFourteenChar
    ;

CELL_EXACTLY_015_CHAR
    : 
    FromOneUpToFifteenChar
    ;

CELL_EXACTLY_016_CHAR
    : 
    FromOneUpToSixteenChar
    ;

CELL_EXACTLY_017_CHAR
    : 
    FromOneUpToSeventeenChar
    ;

CELL_EXACTLY_018_CHAR
    : 
    FromOneUpToEighteenChar
    ;

CELL_EXACTLY_019_CHAR
    : 
    FromOneUpToNineteenChar
    ;

CELL_EXACTLY_020_CHAR
    : 
    FromOneUpToTwentyChar
    ;

CELL_EXACTLY_021_CHAR
    :
    FromOneUpToTwentyOneChar
    ;

CELL_EXACTLY_022_CHAR
    :
    FromOneUpToTwentyTwoChar
    ;

CELL_EXACTLY_023_CHAR
    : 
    FromOneUpToTwentyThreeChar
    ;

CELL_EXACTLY_024_CHAR
    : 
    FromOneUpToTwentyFourChar
    ;

CELL_EXACTLY_025_CHAR
    : 
    FromOneUpToTwentyFiveChar
    ;

CELL_EXACTLY_026_CHAR
    : 
    FromOneUpToTwentySixChar
    ;

CELL_EXACTLY_027_CHAR
    : 
    FromOneUpToTwentySevenChar
    ;

CELL_EXACTLY_028_CHAR
    : 
    FromOneUpToTwentyEightChar
    ;

CELL_EXACTLY_029_CHAR
    : 
    FromOneUpToTwentyNineChar
    ;

CELL_EXACTLY_030_CHAR
    : 
    FromOneUpToThirtyChar
    ;

CELL_EXACTLY_031_CHAR
    : 
    FromOneUpToThirtyOneChar
    ;

CELL_EXACTLY_032_CHAR
    : 
    FromOneUpToThirtyTwoChar
    ;

CELL_MORE_THAN_OR_EQUAL_033_CHAR
    : 
    CELL_EXACTLY_032_CHAR
    OneOrMoreThanOneChar
    ;