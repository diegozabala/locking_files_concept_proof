grammar PartitionerStartsWithPIPAndDelimiterAndOneNonDelimiter_Cell;

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
    KeywordPip  // Note: proposed standard for 'markings'
    DELIMITER
    NON_DELIMITER_STRING
    ANY_STRING*
    ;

NOT_IN_SCOPE
    :
    ANY_STRING+
    ;

DELIMITER
    :
    MultipleHyphenOrSpace
    ;

NON_DELIMITER_STRING
    :
    NonSpaceOrHyphen
    ;

CELL_EMPTY
    :
    EOF
    ;    

ANY_STRING
    :
        DELIMITER
        | NON_DELIMITER_STRING // From AGu: not sure we can use Char as per ScoperStartsWithPIPAndDelimiter_Cell 
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

fragment NonSpaceOrHyphen
    :
    ~(
        ' '
        | '-'
    )
    ;