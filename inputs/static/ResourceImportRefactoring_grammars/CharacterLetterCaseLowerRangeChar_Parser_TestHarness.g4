grammar CharacterLetterCaseLowerRangeChar_Parser_TestHarness;
import CharacterLetterCaseLowerRangeChar_Lexer_TestHarness;

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