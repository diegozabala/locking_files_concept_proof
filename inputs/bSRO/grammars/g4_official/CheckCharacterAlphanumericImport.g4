grammar CheckCharacterAlphanumericImport;

import CharacterLetterCaseInsensitiveRangeChar_resource, CharacterDigitRangeChar_resource;
////Parser Rules

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

//Lexer Fragment Rules

//Lexer Terminal Rules

