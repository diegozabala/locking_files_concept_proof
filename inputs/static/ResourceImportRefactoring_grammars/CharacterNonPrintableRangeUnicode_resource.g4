grammar CharacterNonPrintableRangeUnicode_resource;

////  Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    WHITE_SPACE
    | NOT_WHITE_SPACE
    ;

////  Lexer Rules

WHITE_SPACE
    : 
    UnicodeCategorySpace
    | UnicodeCategoryControl
    ;

NOT_WHITE_SPACE
    :
    NotWhiteSpace
    ;

// Lexer Fragment Rules

fragment NotWhiteSpace
    : 
    Char
    ;

// Lexer Terminal Fragment Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced

// PROS
// Very Brief
// A well-used classification
// Completely covers ~100 varieties of control and space chars
// CONS
// Is not as human readable
// Not very transparent, have to look up these categories

fragment UnicodeCategorySpace
    :
    [\p{Zs}]
    ;
  
fragment UnicodeCategoryControl
    :
    [\p{Cc}]
    ;

fragment Char
    : 
    .
    ;