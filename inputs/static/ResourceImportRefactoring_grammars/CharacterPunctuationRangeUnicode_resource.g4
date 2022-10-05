grammar CharacterPunctuationRangeUnicode_resource;

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
    PUNCTUATION
    | NOT_PUNCTUATION
    ;

//// Lexer Rules

PUNCTUATION
    :
    Punctuation
    ;

NOT_PUNCTUATION
    :
    NotPunctuation
    ;

//// Lexer Fragment Rules

fragment NotPunctuation
    : 
    Char
    ;

// Lexer Terminal Rules

//// Principles
// Rules: Each terminal rule uses ranges, specified by ANTLRS character set '[]'
// Uses the Unicode General Category

// PROS
// More brief than PTA and PTW
// Easier to copy, maintain and review, reduces cognitive burden
// More complete in that it covers everything unicode considers (including outside of Latin)
// CONS
// Much less explicit about what characters the terminal rule handles than, PTT1, PTA PTW
// Less granular for copying into process grammars that need single foChar rules

fragment Punctuation
    :
    [\p{P}]
    ;

fragment Char
    : 
    .
    ;