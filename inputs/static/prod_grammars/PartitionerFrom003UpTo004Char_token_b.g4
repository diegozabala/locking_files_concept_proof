lexer grammar PartitionerFrom003UpTo004Char_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

CELL_FROM_001_UP_TO_002_CHAR
    : 
    FromOneUpToTwoChar
    ;

CELL_FROM_003_UP_TO_004_CHAR 
    : 
    CELL_FROM_001_UP_TO_002_CHAR
    FromOneUpToTwoChar
    ;

CELL_MORE_THAN_OR_EQUAL_005_CHAR
    : 
    CELL_FROM_003_UP_TO_004_CHAR
    OneOrMoreThanOneChar
    ;