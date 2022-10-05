grammar PartitionerLetterLatinOrNonLetterLatinCase_Cell;

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
    CELL_LETTER_CASE_STRING
    | CELL_NON_LETTER_CASE_STRING
    | CELL_LETTER_CASE_AND_NON_LETTER_CASE_STRING
    ;
    
cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

CELL_LETTER_CASE_STRING
    : 
    LetterCase+
    ;

CELL_NON_LETTER_CASE_STRING
    : 
    NonLetterCase+
    ;

CELL_LETTER_CASE_AND_NON_LETTER_CASE_STRING   //@AGu - to move to parser - in a standard way???
    :
    (
        (
            LetterCase
            | NonLetterCase
        )*
        LetterCase
        (
            LetterCase
            | NonLetterCase
        )*
        NonLetterCase
        (
            LetterCase
            | NonLetterCase
        )*
    )
    |   
    (   
       (
            LetterCase
            | NonLetterCase
        )*
        NonLetterCase
        (
            LetterCase
            | NonLetterCase
        )*
        LetterCase
        (
            LetterCase
            | NonLetterCase
        )*
    )    
    ;


CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

//lexer terminal rules

fragment LetterCase // this is not compatible with the alphabet resource grammars, check with Justin
    :
    [A-Za-z]
    ;

fragment NonLetterCase // this is not compatible with the alphabet resource grammars, check with Justin
    :
    ~[A-Za-z]
    ;