grammar CheckLengthType0PlantIdentifier;


//This grammar takes as input the PLANT_IDENTIFIER
//outputted from SegmenterGrammarType0SingleHyphen. 
// Recommended test pack: Sandpits\JPr Sandpit\Shared\tg4\SegmentingTests\Type0PlantIDBasicTest.tg4
//QUERY: HANDLE empty foLines
////Parser Rules

// In the name of the rules, "char" is intended to refer to char content and exclude char container

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    MORE_THAN_OR_EQUAL_FOUR_CHAR 
    | LESS_THAN_FOUR_CHAR
    | END_OF_LINE
    ;

////Lexer Rules

LESS_THAN_FOUR_CHAR
    :
    FromOneUpToTwoChar
    CharContent?
    ;

MORE_THAN_OR_EQUAL_FOUR_CHAR
    :
    LESS_THAN_FOUR_CHAR
    CharContent+
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

//fragment lexer rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

fragment FromOneUpToTwoChar
    : 
    CharContent
    CharContent?
    ;

fragment CarriageReturn
    :  
    '\r'
    ;

fragment LineFeed
    :  
    '\n'
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


