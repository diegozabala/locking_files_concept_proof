grammar CharacterDigitRangeChar_FlatParser_TestHarness;
import CharacterDigitRangeChar_FlatLexer_TestHarness, CharacterDigitRangeChar_i_resource, TokeniseChar_i_resource;

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