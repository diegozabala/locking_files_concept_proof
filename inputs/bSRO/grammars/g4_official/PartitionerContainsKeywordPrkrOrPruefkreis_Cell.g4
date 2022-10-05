grammar PartitionerContainsKeywordPrkrOrPruefkreis_Cell;

////Parser Rules PRKR for Inside Plot or PRUEFKREIS 

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
    CELL_CONTAINS_KEYWORD_PRKR_AND_KEYWORD_PRUEFKREIS
    | CELL_CONTAINS_KEYWORD_PRKR_AND_NOT_CONTAIN_KEYWORD_PRUEFKREIS
    | CELL_CONTAINS_KEYWORD_PRUEFKREIS_AND_NOT_CONTAIN_KEYWORD_PRKR
    | CELL_NOT_CONTAIN_KEYWORD_PRKR_OR_PRUEFKREIS
    ;
    
cellContentUnexpected
    :
    CELL_EMPTY
    ;

 ////Lexer Rules

CELL_CONTAINS_KEYWORD_PRKR_AND_KEYWORD_PRUEFKREIS //From AGu: Should I look at moving this to the parser?
    :
    ( 
        ANY_STRING*
        KeywordPruefkreis
        ANY_STRING*
        KeywordPrkr
        ANY_STRING*
    )
    |
    ( 
        ANY_STRING*
        KeywordPrkr
        ANY_STRING*
        KeywordPruefkreis
        ANY_STRING*
    )
    ;

CELL_CONTAINS_KEYWORD_PRKR_AND_NOT_CONTAIN_KEYWORD_PRUEFKREIS
    :
    (
        Char
        | KeywordPrkr
    )*
    KeywordPrkr
    (
        Char
        | KeywordPrkr
    )*
    ;

CELL_CONTAINS_KEYWORD_PRUEFKREIS_AND_NOT_CONTAIN_KEYWORD_PRKR
    :
    (
        Char
        | KeywordPruefkreis
    )*
    KeywordPruefkreis
    (
        Char
        | KeywordPruefkreis
    )*
    ;

CELL_NOT_CONTAIN_KEYWORD_PRKR_OR_PRUEFKREIS
    :
    Char+
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
    (
        Char
        | KeywordPrkr
        | KeywordPruefkreis
    )+
    ;
    
//lexer fragment rules

fragment KeywordPrkr 
    :
    'PRKR'
    ;

fragment KeywordPruefkreis
    :
    'PRUEFKREIS'
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;