grammar CheckWellFormednessType0PlantTechnicalLocationIdentifier;

// In the body of the rules, the char name is intended to refer to char content and exclude char container
////Parser Rules

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
    BETWEEN_FOUR_AND_THIRTY_CHAR
    ;

NOT_WELL_FORMED
    :
    LESS_THAN_FOUR_CHAR
    MORE_THAN_OR_EQUAL_THIRTY_ONE_CHAR
    ;

LESS_THAN_FOUR_CHAR
    : 
    FromOneUpToTwoChar
    CharContent?
    ;

BETWEEN_FOUR_AND_THIRTY_CHAR
    : 
    FromOneUpToTwoChar
    FromOneUpToFourChar?
    FromOneUpToEightChar?
    FromOneUpToSixteenChar?
    ;

MORE_THAN_OR_EQUAL_THIRTY_ONE_CHAR
    : 
    BETWEEN_FOUR_AND_THIRTY_CHAR
    (
        CharContent
        | AlphanumericHyphenSpace+
    )
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

fragment FromOneUpToTwoChar
    : 
    AlphanumericHyphenSpace
    AlphanumericHyphenSpace?
    ;

fragment FromOneUpToFourChar
    : 
    FromOneUpToTwoChar
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToEightChar
    : 
    FromOneUpToFourChar
    FromOneUpToFourChar?
    ;

fragment FromOneUpToSixteenChar
    : 
    FromOneUpToEightChar
    FromOneUpToEightChar?
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