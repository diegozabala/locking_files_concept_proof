grammar PartitionerDigitOrNonDigit_Cell;

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell // from AGu: should we transform the lexer rules below into parser rules so that we have readible contexts?
    :  
    cellNonempty
    | cellEmpty
    ;

cellNonempty /// should we make Nonempty a word? There is precedent :) https://www.collinsdictionary.com/dictionary/english/nonempty
    :
    CELL_DIGIT_STRING
    | CELL_NON_DIGIT_STRING
    | CELL_DIGIT_AND_NON_DIGIT_STRING
    ;
    
cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_DIGIT_STRING
    : 
    Digit+
    ;

CELL_NON_DIGIT_STRING
    : 
    NonDigit+
    ;

CELL_DIGIT_AND_NON_DIGIT_STRING  //@AGu - to move to parser - in a standard way???
    :
    (
        (
            Digit
            | NonDigit
        )*
        Digit
        (
            Digit
            | NonDigit
        )*
        NonDigit
        (
            Digit
            | NonDigit
        )*
    )
    |   
    (   
       (
            Digit
            | NonDigit
        )*
        NonDigit
        (
            Digit
            | NonDigit
        )*
        Digit
        (
            Digit
            | NonDigit
        )*
    )    
    ;

CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

//lexer terminal rules

fragment Digit // this is not compatible with the alphabet resource grammars, check with Justin
    :
    [0-9]
    ;

fragment NonDigit // this is not compatible with the alphabet resource grammars, check with Justin
    :
    ~[0-9]
    ;