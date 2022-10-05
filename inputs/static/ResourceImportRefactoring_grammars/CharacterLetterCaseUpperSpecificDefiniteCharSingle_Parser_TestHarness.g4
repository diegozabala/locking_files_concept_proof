grammar CharacterLetterCaseUpperSpecificDefiniteCharSingle_Parser_TestHarness;
import CharacterLetterCaseUpperSpecificDefiniteCharSingle_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_UPPER
    | NOT_LETTER_CASE_UPPER
    ;