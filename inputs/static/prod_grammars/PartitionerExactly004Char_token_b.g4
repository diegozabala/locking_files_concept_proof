lexer grammar PartitionerExactly004Char_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

CELL_FROM_001_UP_TO_003_CHAR
    : 
    FromOneUpToThreeChar
    ;

CELL_EXACTLY_004_CHAR
    :
    FromOneUpToFourChar
    ;

CELL_MORE_THAN_OR_EQUAL_005_CHAR
    : 
    CELL_EXACTLY_004_CHAR
    OneOrMoreThanOneChar
    ;