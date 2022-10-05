grammar CheckLengthType2OperationalArea;

//This grammar takes as input the OPERATIONAL_OR_ORGANIZATIONAL_AREA_IDENTIFIER
//outputted from SegmenterGrammarType2SingleHyphen. 
//Suggested test pack: Sandpits\JPr Sandpit\Shared\tg4\SegmentingTests\TechnicalLocationIDBasicTest.tg4

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    plantOperationalAreaCharString
    | plantOperationalAreaTooLong
    | END_OF_LINE
    ;

plantOperationalAreaCharString
    : 
    DELIMITER
    upToSixChar
    ;
plantOperationalAreaTooLong
    :
    plantOperationalAreaCharString
    (ALPHA_NUMERIC_HYPEN_SPACE | NOT_ALPHA_NUMERIC_HYPEN_SPACE | DELIMITER)+
    ;

upToTwoChar
    :
    (ALPHA_NUMERIC_HYPEN_SPACE | DELIMITER | NOT_ALPHA_NUMERIC_HYPEN_SPACE)
    (ALPHA_NUMERIC_HYPEN_SPACE | DELIMITER | NOT_ALPHA_NUMERIC_HYPEN_SPACE)?
    ;

upToSixChar
    :
    upToTwoChar?
    upToTwoChar?
    upToTwoChar?
    ;

////Lexer Rules
//local segmenter names
    
END_OF_LINE 
    :  
    CharContainer
    | WindowsNewLine
    ;

ALPHA_NUMERIC_HYPEN_SPACE
    :
    LetterCaseLower
    | LetterCaseUpper
    | SingleDigit
    | Space
    ;

DELIMITER
    :
    Hyphen
    ;

NOT_ALPHA_NUMERIC_HYPEN_SPACE
    :
    NonCharMember
    ;

////Lexer Terminals

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    '\u0020'
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

fragment NonCharMember
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