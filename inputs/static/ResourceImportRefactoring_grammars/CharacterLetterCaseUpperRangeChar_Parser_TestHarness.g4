grammar CharacterLetterCaseUpperRangeChar_Parser_TestHarness;
import CharacterLetterCaseUpperRangeChar_Lexer_TestHarness;

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