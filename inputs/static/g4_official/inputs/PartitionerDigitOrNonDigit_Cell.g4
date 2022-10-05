grammar PartitionerDigitOrNonDigit_Cell;

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :  
    cellContentExpected
    | cellContentUnexpected
    ;

cellContentExpected
    :
    cellDigitString
    | cellNonDigitString
    | cellDigitAndNonDigitString
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

cellDigitString
    : 
    DIGIT+
    EOF
    ;

cellNonDigitString
    : 
    NON_DIGIT+
    EOF
    ;

cellDigitAndNonDigitString
    :
    (
        DIGIT
        | NON_DIGIT
    )+
    EOF
    ;

////Lexer Rules

CELL_EMPTY
    :
    EOF
    ;    

DIGIT
    :
    Digit
    ;

NON_DIGIT
    :
    NonDigit
    ;

//lexer fragment rules

//lexer terminal rules

fragment Digit
    :
    [0-9]
    ;

fragment NonDigit
    :
    ~[0-9]
    ;