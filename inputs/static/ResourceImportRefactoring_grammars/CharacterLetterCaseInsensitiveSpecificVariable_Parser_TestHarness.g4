grammar CharacterLetterCaseInsensitiveSpecificVariable_Parser_TestHarness;
import CharacterLetterCaseInsensitiveSpecificVariable_Lexer_TestHarness; 

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_INSENSITIVE
    | NOT_LETTER_CASE_INSENSITIVE
    ;