grammar CharacterLetterCaseInsensitiveRangeChar_resource;

//// Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_INSENSITIVE
    | NOT_LETTER_CASE_INSENSITIVE
    ;

//// Lexer Rules

LETTER_CASE_INSENSITIVE
    :
    LetterCaseInsensitive
    ;

NOT_LETTER_CASE_INSENSITIVE
    :
    NotLetterCaseInsensitive
    ;

//// Lexer Fragment Rules

fragment NotLetterCaseInsensitive
    : 
    Char
    ;

// Lexer Terminal Rules

//// Principles
// Rules: Each terminal rule uses ranges, specified by ANTLRS character set '[]'

// PROS
// More brief
// Easier to copy, maintain and review, reduces cognitive burden
// Built-in completeness
// CONS
// Much less explicit about what characters the terminal rule handles than PTW and PTA
// Less granular for copying into process grammars that need single foChar rules

fragment LetterCaseInsensitive
    :
    [a-zA-Z]
    ;

fragment Char
    : 
    .
    ;