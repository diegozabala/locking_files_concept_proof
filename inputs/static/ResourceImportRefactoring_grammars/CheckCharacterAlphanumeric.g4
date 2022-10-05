grammar CheckCharacterAlphanumericImport;

import CharacterLetterCaseInsensitiveRangeChar_i_resource, CharacterDigitRangeChar_i_resource, TokeniseChar;


foStream 
    :
    foChar*
    EOF
    ;

foChar
    :
    ALPHANUMERIC
    | NOT_ALPHANUMERIC
    ;

////Lexer Rules

ALPHANUMERIC
    : 
    LETTER_CASE_INSENSITIVE
    | DIGIT
    ;
    
NOT_ALPHANUMERIC
    :
    Char
    ;