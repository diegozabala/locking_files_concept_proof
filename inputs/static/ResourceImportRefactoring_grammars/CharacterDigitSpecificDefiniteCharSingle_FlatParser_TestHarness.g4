parser grammar CharacterDigitSpecificDefiniteCharSingle_FlatParser_TestHarness;

options { tokenVocab = CharacterDigitSpecificDefiniteCharSingle_NonDigit_Lexer; }

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