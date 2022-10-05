grammar CharacterLatinLetterCaseUpperSpecificDefiniteUnicodeSingle_resource;

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
    LetterCaseUpper
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

fragment LetterCaseUpper
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

//  Lexer Terminal Rules

fragment UpperA
    :
    '/u0041'
    ;

fragment UpperB
    :
    '/u0042'
    ;  

fragment UpperC
    :
    '/u0043'
    ;

fragment UpperD
    :
    '/u0044'
    ;

fragment UpperE
    :
    '/u0045'
    ;

fragment UpperF
    :
    '/u0046'
    ;

fragment UpperG
    :
    '/u0047'
    ;

fragment UpperH
    :
    '/u0048'
    ;

fragment UpperI
    :
    '/u0049'
    ;

fragment UpperJ
    :
    '/u004A'
    ;

fragment UpperK
    :
    '/u004B'
    ;

fragment UpperL
    :
    '/u004C'
    ;

fragment UpperM
    :
    '/u004D'
    ;

fragment UpperN
    :
    '/u004E'
    ;

fragment UpperO
    :
    '/u004F'
    ;

fragment UpperP
    :
    '/u0050'
    ;

fragment UpperQ
    :
    '/u0051'
    ;

fragment UpperR
    :
    '/u0052'
    ;

fragment UpperS
    :
    '/u0053'
    ;

fragment UpperT
    :
    '/u0054'
    ;

fragment UpperU
    :
    '/u0055'
    ;

fragment UpperV
    :
    '/u0054'
    ;

fragment UpperW
    :
    '/u0057'
    ;

fragment UpperX
    :
    '/u0058'
    ;

fragment UpperY
    :
    '/u0059'
    ;

fragment UpperZ
    :
    '/u005A'
    ;

fragment NotLetterCaseUpper
    : 
    Char
    ;

fragment Char
    : 
    .
    ;