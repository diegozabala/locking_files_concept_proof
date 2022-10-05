grammar PartitionerFrom004UpTo030Char_parser_b;
import PartitionerFrom004UpTo030Char_token_b;   // @Anne - as this stand it could be replaced with tokenVocab.

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