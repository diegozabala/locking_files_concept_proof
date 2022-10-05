grammar CheckWellFormednessType2PlantIdentifier;

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    WELL_FORMED
    | NOT_WELL_FORMED
    | END_OF_LINE
    ;

////Lexer Rules

WELL_FORMED
    : 
    EXACTLY_FOUR_CHAR
    ;

NOT_WELL_FORMED
    :
    CharContent+  
    ;

EXACTLY_FOUR_CHAR
    : 
    AlphanumericHyphenSpace
    AlphanumericHyphenSpace
    AlphanumericHyphenSpace
    AlphanumericHyphenSpace
    ;

END_OF_LINE
    :  
    CharContainer
    | WindowsNewLine
    ;

// fragment lexer rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

////Lexer Terminals
    
fragment LineFeed
    : 
    '\n'
    ;
  
fragment CarriageReturn
    : 
    '\r'
    ;

fragment AlphanumericHyphenSpace
    : 
    LetterCaseInsensitive
    | Digit
    | Hyphen
    | Space
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
    ;

fragment LetterCaseInsensitive
    :
    [a-z]
    | [A-Z]
    ;

fragment Digit
    : 
    [0-9]
    ;

fragment NotCarriageReturnOrLineFeed
    :
    ~(
        '\n'
        | '\r'
    )
    ;

fragment CharContent
    :
    NotCarriageReturnOrLineFeed
    ;

fragment CharContainer 
    :   
    LineFeed 
    | CarriageReturn
    ;