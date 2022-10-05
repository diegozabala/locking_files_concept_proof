grammar CharacterLetterCaseLowerRangeChar_resource;

//// Imports
// TokenizeChar.g4
//// Parser Rules

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

//// Lexer Rules

LETTER_CASE_LOWER
    :
    LetterCaseLower
    ;

NOT_LETTER_CASE_LOWER
    :
    NotLetterCaseLower
    ;

//// Lexer Fragment Rules

fragment NotLetterCaseLower
    : 
    Char
    ;

// Lexer Terminal Rules

//// Principles
// Rules: Each terminal rule uses ranges, specified by ANTLRS character set '[]'

// PROS
// More brief than PTA and PTW
// Easier to copy, maintain and review, reduces cognitive burden
// Built-in completeness
// CONS
// Much less explicit about what characters the terminal rule handles than PTW and PTA
// Less granular for copying into process grammars that need single foChar rules

fragment LetterCaseLower
    :
    [a-z]
    ;

fragment Char
    : 
    .
    ;