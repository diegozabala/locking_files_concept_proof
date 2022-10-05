grammar CharacterLatinLetterCaseLowerSpecificDefiniteUnicodeSingle_resource;

////   Imports
//  CharacterAnalysis.g4
////   Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_LOWER
    | NOT_LETTER_CASE_LOWER
    ;

////  Lexer Rules

LETTER_CASE_LOWER
    :
    LetterCaseLower
    ;

NOT_LETTER_CASE_LOWER
    :
    NotLetterCaseLower
    ;

////   Lexer Fragment Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced

// PROS
// Granular enough to be copied into grammars that need only a subset of these foChar
// Very explicit about what characters the rules reference, more meaningful
// CONS
// Much more verbose
// More difficult to review since the rules covers more lines, cognitive burdensome
// Greater number of rules introduced

fragment LetterCaseLower
    :
    LowerA
    | LowerB
    | LowerC
    | LowerD
    | LowerE
    | LowerF
    | LowerG
    | LowerH
    | LowerI
    | LowerJ
    | LowerK
    | LowerL
    | LowerM
    | LowerN
    | LowerO
    | LowerP
    | LowerQ
    | LowerR
    | LowerS
    | LowerT
    | LowerU
    | LowerV
    | LowerW
    | LowerX
    | LowerY
    | LowerZ
    ;

// Lexer Terminal Rules

fragment LowerA
    :
    '/u0061'
    ;

fragment LowerB
    :
    '/u0062'
    ;  

fragment LowerC
    :
    '/u0063'
    ;

fragment LowerD
    :
    '/u0064'
    ;

fragment LowerE
    :
    '/u0065'
    ;

fragment LowerF
    :
    '/u0066'
    ;

fragment LowerG
    :
    '/u0067'
    ;

fragment LowerH
    :
    '/u0068'
    ;

fragment LowerI
    :
    '/u0069'
    ;

fragment LowerJ
    :
    '/u006A'
    ;

fragment LowerK
    :
    '/u006B'
    ;

fragment LowerL
    :
    '/u006C'
    ;

fragment LowerM
    :
    '/u006D'
    ;

fragment LowerN
    :
    '/u006E'
    ;

fragment LowerO
    :
    '/u006F'
    ;

fragment LowerP
    :
    '/u0070'
    ;

fragment LowerQ
    :
    '/u0071'
    ;

fragment LowerR
    :
    '/u0072'
    ;

fragment LowerS
    :
    '/u0073'
    ;

fragment LowerT
    :
    '/u0074'
    ;

fragment LowerU
    :
    '/u0075'
    ;

fragment LowerV
    :
    '/u0076'
    ;

fragment LowerW
    :
    '/u0077'
    ;

fragment LowerX
    :
    '/u0078'
    ;

fragment LowerY
    :
    '/u0079'
    ;

fragment LowerZ
    :
    '/u007A'
    ;

fragment NotLetterCaseLower
    : 
    Char
    ;

fragment Char
    : 
    .
    ;