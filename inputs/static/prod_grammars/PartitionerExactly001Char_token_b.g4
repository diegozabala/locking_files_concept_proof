lexer grammar PartitionerExactly001Char_token_b;
import CellExactly000Char_token_b,Length_Base2_Extension_fragment_b,Length_Base2_fragment_b;

CELL_EXACTLY_001_CHAR
    :
    ExactlyOneChar
    ;

CELL_MORE_THAN_OR_EQUAL_002_CHAR
    : 
    CELL_EXACTLY_001_CHAR
    OneOrMoreThanOneChar
    ;