grammar PartitionerFrom003UpTo004Char_parser_b;
import PartitionerFrom003UpTo004Char_token_b;   // @Anne - as this stand it could be replaced with tokenVocab.

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
    | CELL_MORE_THAN_OR_EQUAL_005_CHAR
    ;