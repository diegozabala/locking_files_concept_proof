grammar CharacterDigitSpecificDefiniteUnicodeSingle_resource;

//  Import TokenizeChar.g4
////   Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    DIGIT
    | NOT_DIGIT
    ;

////   Lexer Rules

DIGIT
    :
    Digit
    ;
    
NOT_DIGIT
    :
    NotDigit
    ;

////   Lexer Fragment Rules

//  Lexer Terminal Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced
// ALternative naming

// PROS
// Granular enough to be copied into grammars that need only a subset of these foChar
// Very explicit about what characters the rules reference, more meaningful
// CONS
// Much more verbose
// More difficult to review since the rules covers more lines, cognitive burdensome
// Greater number of rules introduced

fragment Digit
    :
    Digit0
    | Digit1
    | Digit2
    | Digit3
    | Digit4
    | Digit5
    | Digit6
    | Digit7
    | Digit8
    | Digit9
    ;

fragment Digit0
    :
    '\u0030'
    ;

fragment Digit1
    :
    '\u0031'
    ;

fragment Digit2
    :
    '\u0032'
    ;  

fragment Digit3
    :
    '\u0033'
    ;

fragment Digit4
    :
    '\u0034'
    ;

fragment Digit5
    :
    '\u0035'
    ;

fragment Digit6
    :
    '\u0036'
    ;

fragment Digit7
    :
    '\u0037'
    ;

fragment Digit8
    :
    '\u0038'
    ;

fragment Digit9
    :
    '\u0039'
    ;

fragment NotDigit
    : 
    Char
    ;

fragment Char
    : 
    .
    ;