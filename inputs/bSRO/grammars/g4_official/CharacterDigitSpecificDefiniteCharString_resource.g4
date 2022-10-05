grammar CharacterDigitSpecificDefiniteCharString_resource;

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

////   Lexer Rules

DIGIT
    :
    Digit01234
    | Digit9876
    | Digit014
    | Digit015
    | Digit1234567890
    ;
    
NOT_DIGIT
    :
    NotDigit
    ;

fragment Digit01234
    :
    '01234'
    ;

fragment Digit9876
    :
    '9876'
    ;

fragment Digit014
    :
    '014'
    ;  

fragment Digit015
    :
    '015'
    ;

 fragment Digit1234567890
    :
    '1234567890'
    ;   

fragment NotDigit
    : 
    Char
    ;

fragment Char
    : 
    .
    ;