grammar CharacterLetterCaseLowerSpecificDefiniteCharSingle_resource;

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
    'a'
    ;

fragment LowerB
    :
    'b'
    ;  

fragment LowerC
    :
    'c'
    ;

fragment LowerD
    :
    'd'
    ;

fragment LowerE
    :
    'e'
    ;

fragment LowerF
    :
    'f'
    ;

fragment LowerG
    :
    'g'
    ;

fragment LowerH
    :
    'h'
    ;

fragment LowerI
    :
    'i'
    ;

fragment LowerJ
    :
    'j'
    ;

fragment LowerK
    :
    'k'
    ;

fragment LowerL
    :
    'l'
    ;

fragment LowerM
    :
    'm'
    ;

fragment LowerN
    :
    'n'
    ;

fragment LowerO
    :
    'o'
    ;

fragment LowerP
    :
    'p'
    ;

fragment LowerQ
    :
    'q'
    ;

fragment LowerR
    :
    'r'
    ;

fragment LowerS
    :
    's'
    ;

fragment LowerT
    :
    't'
    ;

fragment LowerU
    :
    'u'
    ;

fragment LowerV
    :
    'v'
    ;

fragment LowerW
    :
    'w'
    ;

fragment LowerX
    :
    'x'
    ;

fragment LowerY
    :
    'y'
    ;

fragment LowerZ
    :
    'z'
    ;

fragment NotLetterCaseLower
    : 
    Char
    ;

fragment Char
    : 
    .
    ;