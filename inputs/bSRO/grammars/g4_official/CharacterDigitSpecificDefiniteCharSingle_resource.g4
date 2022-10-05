grammar CharacterDigitSpecificDefiniteCharSingle_resource;

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
    '0'
    ;

fragment Digit1
    :
    '1'
    ;

fragment Digit2
    :
    '2'
    ;  

fragment Digit3
    :
    '3'
    ;

fragment Digit4
    :
    '4'
    ;

fragment Digit5
    :
    '5'
    ;

fragment Digit6
    :
    '6'
    ;

fragment Digit7
    :
    '7'
    ;

fragment Digit8
    :
    '8'
    ;

fragment Digit9
    :
    '9'
    ;

fragment NotDigit
    : 
    Char
    ;

fragment Char
    : 
    .
    ;