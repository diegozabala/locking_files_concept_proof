grammar CharacterLetterCaseUpperRangeChar_resource;

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
    LETTER_CASE_UPPER
    | NOT_LETTER_CASE_UPPER
    ;

//// Lexer Rules

LETTER_CASE_UPPER
    :
    LetterCaseUpper
    ;

NOT_LETTER_CASE_UPPER
    :
    NotLetterCaseUpper
    ;

//// Lexer Fragment Rules

fragment NotLetterCaseUpper
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

fragment LetterCaseUpper
    :
    [A-Z]
    ;

fragment Char
    : 
    .
    ;