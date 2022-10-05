grammar CharacterDigitRangeChar_TallParser_TestHarness;
import CharacterDigitRangeChar_TallLexer_TestHarness;

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