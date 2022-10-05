grammar SegmenterGrammarType2SingleDash;

////Parser Rules

foCharStream 
    :
        foLine*
        EOF
    ;

foLine
:
    (   
        name
        | END_OF_LINE
    )
;

name
:
    (   
        technicalLocationIdentifier 
        | PLANT_IDENTIFIER
    )
;

technicalLocationIdentifier 
    : 
    PLANT_IDENTIFIER
        (
            ALPHABET_HYPHEN_MEMBER
            | OPERATIONAL_OR_ORGANIZATIONAL_AREA_IDENTIFIER
        )?
    ;

////Lexer Rules
//local segmenter names
    
PLANT_IDENTIFIER
    : 
        ALPHABET_RHINELAND_MEMBER+
    ;

OPERATIONAL_OR_ORGANIZATIONAL_AREA_IDENTIFIER
    : 
        DASH
        ALPHABET_HYPHEN_MEMBER+
    ;

ALPHABET_HYPHEN_MEMBER //aka plantSegment
    : 
        ALPHABET_RHINELAND_MEMBER
        | DASH
    ;

DASH
    :
        '-'
    ;

END_OF_LINE 
    :  
        WindowsNewLine 
        | LineFeed 
        | CarriageReturn 
    ;

////Lexer Terminals

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

fragment LineFeed
    : [\n]
    ;
  
fragment CarriageReturn
    : [\r]
    ;

fragment NotCarriageReturnOrLineFeed
    :
        ~(
            [\n]
            | [\r]
        )
    ;

fragment NotCarriageReturnOrLineFeedOrDash
    :
        ~(
            [\n]
            | [\r]
            | '-'
        )  
    ;

fragment ALPHABET_RHINELAND_MEMBER
    :
    NotCarriageReturnOrLineFeedOrDash
    ;



