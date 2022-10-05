grammar PartitionerLetterLatinOrNonLetterLatinCase_Cell;

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
    cellLetterCaseInsensitiveString
    | cellNonLetterCaseInsensitiveString
    | cellLetterCaseInsensitiveAndNonLetterCaseInsensitiveString
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

cellLetterCaseInsensitiveString
    :
    LETTER_CASE_INSENSITIVE+
    EOF
    ;

cellNonLetterCaseInsensitiveString
    :
    NON_LETTER_CASE_INSENSITIVE+
    EOF
    ;

cellLetterCaseInsensitiveAndNonLetterCaseInsensitiveString
    :
    (
        LETTER_CASE_INSENSITIVE
        | NON_LETTER_CASE_INSENSITIVE
    )+
    EOF
    ;

////Lexer Rules

CELL_EMPTY
    :
    EOF
    ;   

LETTER_CASE_INSENSITIVE
    :
    LetterCaseInsensitive
    ;

NON_LETTER_CASE_INSENSITIVE
    :
    NonLetterCaseInsensitive
    ;

//lexer fragment rules

//lexer terminal rules

fragment LetterCaseInsensitive // there are multiple different ways of specifying this in the grammars - need to establish a standard way, check with Justin // LetterCase => SingleLetterCase
    :
    [A-Za-z]
    ;

fragment NonLetterCaseInsensitive // there are multiple different ways of specifying this in the grammars - need to establish a standard way, check with Justin // NonLetterCase => SingleNonLetterCase
    :
    ~[A-Za-z]
    ;