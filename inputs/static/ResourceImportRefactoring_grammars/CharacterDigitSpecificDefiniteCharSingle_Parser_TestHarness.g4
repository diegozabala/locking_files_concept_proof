grammar CharacterDigitSpecificDefiniteCharSingle_TestHarness;
import CharacterDigitSpecificDefiniteCharSingle_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    DIGIT
    | NOT_DIGIT
    ;