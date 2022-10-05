lexer grammar PartitionerFrom004UpTo030Char_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

CELL_FROM_001_UP_TO_003_CHAR
    : 
    FromOneUpToThreeChar
    ;

CELL_FROM_004_UP_TO_030_CHAR 
    : 
    CELL_FROM_001_UP_TO_003_CHAR
    FromOneUpToTwentySevenChar
    ;

CELL_MORE_THAN_OR_EQUAL_031_CHAR
    : 
    CELL_FROM_004_UP_TO_030_CHAR
    OneOrMoreThanOneChar
    ;