grammar PartitionerStartsWithPIPAndDelimiter_Cell;

////Parser Rules

foCharStream
    :
    foCell?
    EOF
    ;

foCell // from AGu: should we transform the lexer rules below into parser rules so that we have readible contexts?
    :   
    IN_SCOPE
    | NOT_IN_SCOPE
    | CELL_EMPTY
    ;

 ////Lexer Rules

IN_SCOPE
    :
    KeywordPip 
    DELIMITER
    ;

NOT_IN_SCOPE
    :
    ANY_STRING
    ;

DELIMITER
    :
    MultipleHyphenOrSpace
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
    (   
        KeywordPip
        | DELIMITER
        | Char
    )+
    ;

//lexer fragment rules

fragment MultipleHyphenOrSpace // this defines the content - this is being reused above as part of the delimiter function
    :
    (   
        Hyphen
        | Space
    )+
    ;

fragment KeywordPip // @Justin, @Andy - is this a terminal rule?
    :
    'PIP' // we are assuming that keywords are case sensitive
    ;

//lexer terminal rules

fragment Space // @Justin, @Andy - do we use UNICODE for printable space?
    :
    '\u0020'
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Char
    :
    .
    ;