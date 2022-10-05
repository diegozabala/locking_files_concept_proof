grammar TestLengthFromXUpToYChar_parser_b;
import TestLengthFromXUpToYChar_token_b;

/* Note: We haven't coded rules for all numbers 
but we should add the rule here first before using the rule in another grammar  */

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