grammar ScoperType1;

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
        type0InScope 
        | type1InScope
        | outOfScope
    )
;

type0InScope 
    : 
    PLANT_IDENTIFIER
    PLANT_TECHNICAL_LOCATION_IDENTIFIER
    ;

type1InScope 
    : 
    PLANT_IDENTIFIER
    ;

outOfScope //any other combination of tokens
    :
    (
        ALPHABET_HYPHEN_MEMBER 
        | PLANT_IDENTIFIER 
        | PLANT_TECHNICAL_LOCATION_IDENTIFIER
    )+
    ;

////Lexer Rules
//local segmenter names
    
PLANT_IDENTIFIER
    : 
        ALPHABET_RHINELAND_MEMBER+
    ;

PLANT_TECHNICAL_LOCATION_IDENTIFIER
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



