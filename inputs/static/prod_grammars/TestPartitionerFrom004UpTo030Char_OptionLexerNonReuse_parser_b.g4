grammar TestPartitionerFrom004UpTo030Char_OptionLexerNonReuse_token_b;
import TestPartitionerFrom004UpTo030Char_OptionLexerNonReuse_token_b;

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
    | CELL_FROM_004_UP_TO_030_CHAR
    | CELL_MORE_THAN_OR_EQUAL_031_CHAR
    ;