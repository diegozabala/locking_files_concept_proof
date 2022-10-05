grammar CheckLineAlphanumericHyphenSpace;

////Import
//CharacterLetterCaseInsensitiveRangeChar_resource
//CharacterNonPrintableSpecificDefiniteSingleUnicode_resource
//CharacterPunctuationSpecificDefiniteCharSingle_resouce
//CharacterDigitRangeChar_resource
//ContainerLine_resource
////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LINE_ALPHANUMERIC_HYPHEN_SPACE
    | NON_EMPTY_LINE
    | END_OF_LINE
    ;

////Lexer Rules

LINE_ALPHANUMERIC_HYPHEN_SPACE
    :
    ALPHANUMERIC_HYPHEN_SPACE+
    ;

NON_EMPTY_LINE
    :
    CharContent+
    ;

ALPHANUMERIC_HYPHEN_SPACE
    : 
    LetterCaseInsensitive
    | Digit
    ;

NOT_ALPHANUMERIC
    :
    CharContent
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

//Lexer Fragment Rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

//lexer terminal rules

fragment LineFeed
    : 
    '\n'
    ;

fragment CarriageReturn
    : 
    '\r'
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

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
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