grammar CharacterLatinLetterCaseInsensitiveSpecificDefiniteCharSingle_resource;

////  Imports
// AlphabeLatinLettersLowerCase_resource
// AlphabetLatinLettersUpperCase_resource

////  Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER
    | NOT_LETTER
    ;

////  Lexer Rules

LETTER
    :
    Letter
    ;

NOT_LETTER
    :
    NotLetter
    ;

////  Lexer Fragment Rules

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

fragment Letter
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

fragment LetterA
    :
    UpperA
    | LowerA
    ;

fragment LetterB
    :
    UpperB
    | LowerB
    ;

fragment LetterC
    :
    UpperC
    | LowerC
    ;

fragment LetterD
    :
    UpperD
    | LowerD
    ;

fragment LetterE
    :
    UpperE
    | LowerE
    ;

fragment LetterF
    :
    UpperF
    | LowerF
    ;

fragment LetterG
    :
    UpperG
    | LowerG
    ;

fragment LetterH
    :
    UpperH
    | LowerH
    ;

fragment LetterI
    :
    UpperI
    | LowerI
    ;

fragment LetterJ
    :
    UpperJ
    | LowerJ
    ;

fragment LetterK
    :
    UpperK
    | LowerK
    ;

fragment LetterL
    :
    UpperL
    | LowerL
    ;

fragment LetterM
    :
    UpperM
    | LowerM
    ;

fragment LetterN
    :
    UpperN
    | LowerN
    ;

fragment LetterO
    :
    UpperO
    | LowerO
    ;

fragment LetterP
    :
    UpperP
    | LowerP
    ;

fragment LetterQ
    :
    UpperQ
    | LowerQ
    ;

fragment LetterR
    :
    UpperR
    | LowerR
    ;

fragment LetterS
    :
    UpperS
    | LowerS
    ;

fragment LetterT
    :
    UpperT
    | LowerT
    ;

fragment LetterU
    :
    UpperU
    | LowerU
    ;

fragment LetterV
    :
    UpperV
    | LowerV
    ;

fragment LetterW
    :
    UpperW
    | LowerW
    ;

fragment LetterX
    :
    UpperX
    | LowerX
    ;

fragment LetterY
    :
    UpperY
    | LowerY
    ;

fragment LetterZ
    :
    UpperZ
    | LowerZ
    ;

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

fragment NotLetter
    : 
    Char
    ;

fragment Char
    : 
    .
    ;