grammar CheckLengthType2PlantIdentifier;


//This grammar takes as input the PLANT_IDENTIFIER
//outputted from SegmenterGrammarType2SingleHyphen. 
// Recommended test pack: Sandpits\JPr Sandpit\Shared\tg4\SegmentingTests\Type0PlantIDBasicTest.tg4

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    plantIdentifierTooLong
    | plantIdentifierProperLength
    | plantIdentifierTooShort
    | END_OF_LINE
;

plantIdentifierTooLong
    :
    plantIdentifierProperLength
    (ALPHANUMERIC_SPACE | CHAR_FULL)+
    ;

plantIdentifierProperLength
    : 
    (ALPHANUMERIC_SPACE | CHAR_FULL)
    (ALPHANUMERIC_SPACE | CHAR_FULL)
    (ALPHANUMERIC_SPACE | CHAR_FULL)
    (ALPHANUMERIC_SPACE | CHAR_FULL)
    ;

plantIdentifierTooShort
    :
    (ALPHANUMERIC_SPACE | CHAR_FULL)
    (ALPHANUMERIC_SPACE | CHAR_FULL)?
    (ALPHANUMERIC_SPACE | CHAR_FULL)?
    ;

////Lexer Rules
//local segmenter names
    
END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

ALPHANUMERIC_SPACE
    :
    LetterCaseLower
    | LetterCaseUpper
    | SingleDigit
    ;

CHAR_FULL
    :
    NonCharacterMember
    ;

////Lexer Terminals

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

fragment LetterCaseLower
    : 
    [a-z]
    ;

fragment LetterCaseUpper
    : 
    [A-Z]
    ;

fragment SingleDigit
    : 
    [0-9]
    ;

fragment LineFeed
    : 
    '\n'
    ;
  
fragment CarriageReturn
    : 
    '\r'
    ;

fragment NonCharacterMember
    :
    .
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