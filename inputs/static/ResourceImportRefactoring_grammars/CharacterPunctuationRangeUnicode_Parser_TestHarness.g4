grammar CharacterPunctuationRangeUnicode_Parser_TestHarness;
import CharacterPunctuationRangeUnicode_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    PUNCTUATION
    | NOT_PUNCTUATION
    ;