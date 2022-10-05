lexer grammar CharacterDigitSpecificDefiniteCharSingle_TallLexer_TestHarness;
import CharacterDigitSpecificDefiniteCharSingle_i_resource, TokeniseChar_i_resource;

DIGIT // Note: Non-canonical form - canonical form is set.
    :
    Digit0
    | Digit1
    | Digit2
    | Digit3
    | Digit4
    | Digit5
    | Digit6
    | Digit7
    | Digit8
    | Digit9
    ;

NOT_DIGIT
    :
    Char
    ;