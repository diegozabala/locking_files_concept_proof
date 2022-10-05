grammar PartitionerExactly004Char_parser_b;
import PartitionerExactly004Char_token_b;

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
    CELL_EXACTLY_000_CHAR
    | CELL_FROM_001_UP_TO_003_CHAR
    | CELL_EXACTLY_004_CHAR
    | CELL_MORE_THAN_OR_EQUAL_005_CHAR
    ;