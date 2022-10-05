grammar ScoperType2;

//Grammar is tested and works to categorize a name as in scope for 
//type 0 or type 2, or out of scope if it doesnt fall into these categories. 
//This does so by checking the length of the last segment. If the last segment is greater than six,
// it gets categorized as type 0, if less than six, categorized as type 2
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
        | type2InScope
        | outOfScope
    )
;

type0InScope 
    : 
    PLANT_IDENTIFIER
    PLANT_TECHNICAL_LOCATION_IDENTIFIER
    ;

type2InScope 
    : 
    PLANT_IDENTIFIER
    PLANT_OPERATIONAL_AREA_IDENTIFIER
    ;

outOfScope //any other combination of tokens
    :
    (
        PLANT_IDENTIFIER
        | PLANT_OPERATIONAL_AREA_IDENTIFIER
        | ALPHABET_HYPHEN_MEMBER
        | PLANT_TECHNICAL_LOCATION_IDENTIFIER
    )+
    ;

////Lexer Rules
//local segmenter names
    
PLANT_IDENTIFIER
    : 
        ALPHABET_RHINELAND_MEMBER+
    ;

PLANT_OPERATIONAL_AREA_IDENTIFIER
    : 
        DASH
        UpToSix
    ; 

PLANT_TECHNICAL_LOCATION_IDENTIFIER
    : 
        PLANT_OPERATIONAL_AREA_IDENTIFIER
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

fragment UpToTwo
    :
        ALPHABET_RHINELAND_MEMBER
        ALPHABET_RHINELAND_MEMBER?
    ;

fragment UpToSix
    :
        UpToTwo?
        UpToTwo?
        UpToTwo?
    ;


