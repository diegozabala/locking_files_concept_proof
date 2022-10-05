grammar CharacterNonPrintableRangeUnicode_Parser_TestHarness;
import CharacterNonPrintableRangeUnicode_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    WHITE_SPACE
    | NOT_WHITE_SPACE
    ;