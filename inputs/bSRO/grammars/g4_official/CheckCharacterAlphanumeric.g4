grammar CheckCharacterAlphanumeric;

////Import
//CharacterLetterCaseInsensitiveRangeChar_resource
//CharacterDigitRangeChar_resource
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
    LetterCaseInsensitive
    | Digit
    ;

NOT_ALPHANUMERIC
    :
    Char
    ;

//Lexer Fragment Rules

//Lexer Terminal Rules

fragment LetterCaseInsensitive
    :
    [a-z]
    | [A-Z]
    ;

fragment Digit
    :
    [0-9]
    ;

fragment Char
    : 
    .
    ;