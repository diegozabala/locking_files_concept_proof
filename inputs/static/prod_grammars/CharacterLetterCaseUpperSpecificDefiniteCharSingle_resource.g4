grammar CharacterLetterCaseUpperSpecificDefiniteCharSingle_resource;

////  Imports
// CharacterAnalysis.g4
////  Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_UPPER
    | NOT_LETTER_CASE_UPPER
    ;

////  Lexer Rules

LETTER_CASE_UPPER
    :
     UpperA
    | UpperB
    | UpperC
    | UpperD
    | UpperE
    | UpperF
    | UpperG
    | UpperH
    | UpperI
    | UpperJ
    | UpperK
    | UpperL
    | UpperM
    | UpperN
    | UpperO
    | UpperP
    | UpperQ
    | UpperR
    | UpperS
    | UpperT
    | UpperU
    | UpperV
    | UpperW
    | UpperX
    | UpperY
    | UpperZ
    ;

NOT_LETTER_CASE_UPPER
    :
    NotLetterCaseUpper
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

//  Lexer Terminal Rules

fragment UpperA
    :
    'A'
    ;

fragment UpperB
    :
    'B'
    ;  

fragment UpperC
    :
    'C'
    ;

fragment UpperD
    :
    'D'
    ;

fragment UpperE
    :
    'E'
    ;

fragment UpperF
    :
    'F'
    ;

fragment UpperG
    :
    'G'
    ;

fragment UpperH
    :
    'H'
    ;

fragment UpperI
    :
    'I'
    ;

fragment UpperJ
    :
    'J'
    ;

fragment UpperK
    :
    'K'
    ;

fragment UpperL
    :
    'L'
    ;

fragment UpperM
    :
    'M'
    ;

fragment UpperN
    :
    'N'
    ;

fragment UpperO
    :
    'O'
    ;

fragment UpperP
    :
    'P'
    ;

fragment UpperQ
    :
    'Q'
    ;

fragment UpperR
    :
    'R'
    ;

fragment UpperS
    :
    'S'
    ;

fragment UpperT
    :
    'T'
    ;

fragment UpperU
    :
    'U'
    ;

fragment UpperV
    :
    'V'
    ;

fragment UpperW
    :
    'W'
    ;

fragment UpperX
    :
    'X'
    ;

fragment UpperY
    :
    'Y'
    ;

fragment UpperZ
    :
    'Z'
    ;

fragment NotLetterCaseUpper
    : 
    Char
    ;

fragment Char
    : 
    .
    ;