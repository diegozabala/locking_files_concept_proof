grammar CheckWellFormednessType2OperationalArea;

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
    wellFormedOperationalAreaIdentifier
    | notWellFormedOperationalAreaIdentifier
    | END_OF_LINE 
    ;

wellFormedOperationalAreaIdentifier 
    : 
    plantOperationalAreaCharString
    ;

notWellFormedOperationalAreaIdentifier 
    : 
    notWellFormed
    ;

plantOperationalAreaCharString
    : 
    DELIMITER
    upToSixChar
    ;

upToTwoChar
    :
    (ALPHANUMERIC_SPACE | DELIMITER)
    (ALPHANUMERIC_SPACE | DELIMITER)?
    ;

upToSixChar
    :
    upToTwoChar?
    upToTwoChar?
    upToTwoChar?
    ;

notWellFormed
    :
    DELIMITER
    (ALPHANUMERIC_SPACE | CHAR_FULL | DELIMITER)+
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
    | Space
    ;

DELIMITER
    :
    Hyphen
    ;

CHAR_FULL
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