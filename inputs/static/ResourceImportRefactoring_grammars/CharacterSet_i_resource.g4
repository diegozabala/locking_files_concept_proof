lexer grammar CharacterSet_i_resource;

fragment Digit
    :
    [0-9]
    ;

fragment LetterCaseInsensitive
    :
    [a-zA-Z]
    ;

fragment LetterCaseLower
    :
    [a-z]
    ;

fragment LetterCaseUpper
    :
    [A-Z]
    ;
    
fragment Punctuation // @justin - rename to UnicodeCategoryPunctuation OR rename the others ???
    :
    [\p{P}]
    ;

fragment UnicodeCategorySpace
    :
    [\p{Zs}]
    ;
  
fragment UnicodeCategoryControl
    :
    [\p{Cc}]
    ;