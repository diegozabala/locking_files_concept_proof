grammar CharacterPunctuationSpecificDefiniteCharSingle_Parser_TestHarness;
import CharacterPunctuationSpecificDefiniteCharSingle_Lexer_TestHarness;

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