grammar PartitionerOnlyOUT_Cell;

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell // from AGu: should we transform the lexer rules below into parser rules so that we have readable contexts?
    :   
    IN_SCOPE    // Note: proposed standard for name in and out of scope. Revise in light of partition?
    | NOT_IN_SCOPE
    | CELL_EMPTY
    ;

 ////Lexer Rules

IN_SCOPE
    :
    KeywordOut  // Note: proposed standard for 'markings'
    ;

NOT_IN_SCOPE
    :
    ANY_STRING
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
    Char+
    ;

//lexer fragment rules

fragment KeywordOut // @Justin, @Andy - is this a terminal rule?
    :
    'OUT' // we are assuming that keywords are case sensitive
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;