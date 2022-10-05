grammar CharacterNonPrintableSpecificDefiniteSingleRegex_resource;

////  Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    WHITE_SPACE_REGEX
    | NOT_WHITE_SPACE
    ;

////  Lexer Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced

// PROS
// Granular enough to be copied into grammars that need only a subset of these foChar
// Very explicit about what characters the rules reference, more meaningful
// A well-used classification
// CONS
// Much more verbose
// More difficult to review since the rules covers more lines, cognitive burdensome
// Greater number of rules introduced


//  OBSERVATION: These 'characters' are not easy to read in their 'bare' (terminal) form - so named fragments is a big improvement in readability.
//  Regex version

WHITE_SPACE_REGEX
    : 
    Tabulation 
    | CarriageReturn
    | FormFeed
    | LineFeed
    ;

NOT_WHITE_SPACE
    :
    NotWhiteSpace
    ;

// Lexer Terminal Fragment Rules
  
fragment CarriageReturn
    :
    '\r'
    ; 

fragment Tabulation 
    :
    '\t'
    ; 
    
fragment FormFeed
    :
    '\f'
    ; 

fragment LineFeed
    : 
    '\n'
    ;

fragment NotWhiteSpace
    : 
    Char
    ;

fragment Char
    : 
    .
    ;