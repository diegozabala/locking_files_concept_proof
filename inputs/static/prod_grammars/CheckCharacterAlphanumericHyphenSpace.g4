grammar CheckAlphanumericHyphenSpace;

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
    LetterCaseInsensitive
    | Digit
    | Hyphen
    | Space
    ;

NOT_ALPHANUMERIC_HYPHEN_SPACE
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

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
    ;

fragment Char
    : 
    .
    ;