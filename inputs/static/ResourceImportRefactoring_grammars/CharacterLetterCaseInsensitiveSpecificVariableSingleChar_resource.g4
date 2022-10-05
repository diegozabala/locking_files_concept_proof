grammar CharacterLetterCaseInsensitiveSpecificVariableSingleChar_resource;

//// Imports
//AlphabeLatinLettersCaseLower_resource
//CharacterLatinLettersCaseUpper_resource

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
    LetterA
    | LetterB
    | LetterC
    | LetterD
    | LetterE
    | LetterF
    | LetterG
    | LetterH
    | LetterI
    | LetterJ
    | LetterK
    | LetterL
    | LetterM
    | LetterN
    | LetterO
    | LetterP
    | LetterQ
    | LetterR
    | LetterS
    | LetterT
    | LetterU
    | LetterV
    | LetterW
    | LetterX
    | LetterY
    | LetterZ
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
// Rules: Terminal rules written explicitly (written in literals)
// but each literal does not have its own terminal rule

// PROS
// Human readable
// More brief
// Easier to review 
// CONS
// Not granular enough to reuse in process grammars that require rules like 'Digit1'
// Easier to make errors in writing these rules

fragment LetterA
    :
    ('a' | 'A')
    ;

fragment LetterB
    :
    ('b' | 'B')
    ;

fragment LetterC
    :
    ('c' | 'C')
    ;

fragment LetterD
    :
    ('d' | 'D')
    ;

fragment LetterE
    :
    ('e' | 'E')
    ;

fragment LetterF
    :
    ('f' | 'F')
    ;

fragment LetterG
    :
    ('g' | 'G')
    ;

fragment LetterH
    :
    ('h' | 'H')
    ;

fragment LetterI
    :
    ('i' | 'I')
    ;

fragment LetterJ
    :
    ('j' | 'J')
    ;

fragment LetterK
    :
    ('k' | 'K')
    ;

fragment LetterL
    :
    ('l' | 'L')
    ;

fragment LetterM
    :
    ('m' | 'M')
    ;

fragment LetterN
    :
    ('n' | 'N')
    ;

fragment LetterO
    :
    ('o' | 'O')
    ;

fragment LetterP
    :
    ('p' | 'P')
    ;

fragment LetterQ
    :
    ('q' | 'Q')
    ;

fragment LetterR
    :
    ('r' | 'R')
    ;

fragment LetterS
    :
    ('s' | 'S')
    ;

fragment LetterT
    :
    ('t' | 'T')
    ;

fragment LetterU
    :
    ('u' | 'U')
    ;

fragment LetterV
    :
    ('v' | 'V')
    ;

fragment LetterW
    :
    ('w' | 'W')
    ;

fragment LetterX
    :
    ('x' | 'X')
    ;

fragment LetterY
    :
    ('y' | 'Y')
    ;

fragment LetterZ
    :
    ('z' | 'Z')
    ;

fragment Char
    : 
    .
    ;