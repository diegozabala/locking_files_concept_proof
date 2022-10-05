grammar CharacterLetterCaseLowerSpecificDefiniteCharSingle_Parser_TestHarness;
import CharacterLetterCaseLowerSpecificDefiniteCharSingle_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_LOWER
    | NOT_LETTER_CASE_LOWER
    ;