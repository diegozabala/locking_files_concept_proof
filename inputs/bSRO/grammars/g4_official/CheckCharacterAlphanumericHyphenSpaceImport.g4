grammar CheckCharacterAlphanumericHyphenSpaceImport;

import CharacterLetterCaseInsensitiveRangeChar_resource, CharacterDigitRangeChar_resource, CharacterPunctuationSpecificDefiniteCharSingle_resouce, CharacterNonPrintableSpecificDefiniteSingleUnicode_resource;
////Parser Rules

foStream 
    :
    foChar*
    EOF
    ;

foChar
    :
    ALPHANUMERIC_HYPHEN_SPACE
    | NOT_ALPHANUMERIC_HYPHEN_SPACE
    ;

////Lexer Rules

ALPHANUMERIC_HYPHEN_SPACE
    : 
    LETTER_CASE_INSENSITIVE
    | DIGIT
    | Hyphen
    | Space
    ;
    
NOT_ALPHANUMERIC_HYPHEN_SPACE
    :
    Char
    ;

//Lexer Fragment Rules

//Lexer Terminal Rules

