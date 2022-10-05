grammar CharacterLatinLetterCaseInsensitiveSpecificDefiniteUnicodeSingle_resource;

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
    '/u0061'
    ;

fragment LowerB
    :
    '/u0062'
    ;  

fragment LowerC
    :
    '/u0063'
    ;

fragment LowerD
    :
    '/u0064'
    ;

fragment LowerE
    :
    '/u0065'
    ;

fragment LowerF
    :
    '/u0066'
    ;

fragment LowerG
    :
    '/u0067'
    ;

fragment LowerH
    :
    '/u0068'
    ;

fragment LowerI
    :
    '/u0069'
    ;

fragment LowerJ
    :
    '/u006A'
    ;

fragment LowerK
    :
    '/u006B'
    ;

fragment LowerL
    :
    '/u006C'
    ;

fragment LowerM
    :
    '/u006D'
    ;

fragment LowerN
    :
    '/u006E'
    ;

fragment LowerO
    :
    '/u006F'
    ;

fragment LowerP
    :
    '/u0070'
    ;

fragment LowerQ
    :
    '/u0071'
    ;

fragment LowerR
    :
    '/u0072'
    ;

fragment LowerS
    :
    '/u0073'
    ;

fragment LowerT
    :
    '/u0074'
    ;

fragment LowerU
    :
    '/u0075'
    ;

fragment LowerV
    :
    '/u0076'
    ;

fragment LowerW
    :
    '/u0077'
    ;

fragment LowerX
    :
    '/u0078'
    ;

fragment LowerY
    :
    '/u0079'
    ;

fragment LowerZ
    :
    '/u007A'
    ;

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

fragment NotLetter
    : 
    Char
    ;

fragment Char
    : 
    .
    ;