grammar CharacterNonPrintableWhitespaceSpeicifcDefiniteUnicodeSingle_resource;

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
    CharacterTabulation 
    | CarriageReturn
    | FormFeed
    | LineFeed
    | Space
    ;

NOT_WHITE_SPACE
    :
    NotWhiteSpace
    ;

//// Lexer Fragment Rules

fragment NotWhiteSpace
    : 
    Char
    ;

// Lexer Terminal Fragment Rules
  
//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced
// Unicode alternative where each literal references unicode

// PROS
// Granular enough to be copied into grammars that need only a subset of these foChar
// A well-used classification
// CONS
// Compared to non-unicode these are slightly more difficult for humans to parse


//  OBSERVATION: These 'characters' are not easy to read in their 'bare' (terminal) form - so named fragments is a big improvement in readability.
//  Regex version

fragment CarriageReturn
    :
    '\u000D'
    ; 

fragment CharacterTabulation 
    :
    '\u0009'
    ; 
    
fragment FormFeed
    :
    '\u000C'
    ; 

fragment LineFeed
    : 
    '\u000A'
    ;

fragment Space 
    : 
    '\u0020' 
    ; 

//to add unicode for control characters


fragment Char
    : 
    .
    ;