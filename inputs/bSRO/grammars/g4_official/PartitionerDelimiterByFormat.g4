grammar PartitionerDelimiterByFormat;

//from AGu: rename grammar as PartitionerDelimiterHyphenSpaceByFormat ?

////Parser Rules

foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :  
    cellContentExpected 
    | cellContentUnExpected
    ;

cellContentExpected
    :
    cellWithDelimiterStringOnly
    ;

cellContentUnExpected
    :
    cellWithAtLeastOneNonDelimiter
    | cellEmpty
    ;

cellNonempty // this code is not read by Antlr
    :
    cellWithDelimiterStringOnly
    | cellWithAtLeastOneNonDelimiter
    ;

cellWithDelimiterStringOnly
    :
    cellWithExactlyOneDelimiter 
    | cellWithMoreThanOneDelimiter  /*from Agu: not sure of the name; the alternative cellWithDelimiterStringOnly 
    doesn't seem appropriate as it includes the edge case of a string with one char only?*/
    ;

cellWithExactlyOneDelimiter
    :
    cellWithExactlyOneHyphen
    | cellWithExactlyOneSpace
    ;

cellWithMoreThanOneDelimiter
    :
    cellWithOneDelimiterType  //from Agu: not sure of the name 
    | cellWithMultipleDelimiterTypes //from Agu: not sure the name
    ;

cellWithOneDelimiterType
    :
    cellWithHyphenString
    | cellWithSpaceString
    ;

cellWithMultipleDelimiterTypes // from Agu: remove this intermediate context as there is only one category in it?
    :
    cellWithHyphenAndOrSpaceStringOnly
    ;

cellWithExactlyOneHyphen
    :
    HYPHEN
    ;

cellWithHyphenString
    :
    HYPHEN+
    ;

cellWithExactlyOneSpace
    :
    SPACE
    ;

cellWithSpaceString
    :
    SPACE+
    ;

cellWithHyphenAndOrSpaceStringOnly
    :
    (
        HYPHEN
        | SPACE 
    )+
    ;

cellWithAtLeastOneNonDelimiter
    :
    (   NON_DELIMITER
        | delimiterString
    )+
    ;
    
delimiterString
    :
    HYPHEN
    | SPACE
    ;

cellEmpty
    :
    CELL_EMPTY
    ;

////Lexer Rules

HYPHEN
    : 
    Hyphen
    ;

SPACE
    :
    Space   
    ;

NON_DELIMITER
    :
    Char
    ;

CELL_EMPTY
    :
    EOF
    ;    

//lexer fragment rules

//lexer terminal rules

fragment Space
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