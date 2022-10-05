grammar CharacterLatinLetterCaseUpperSpecificDefiniteCharString_resource;

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
    LETTER_CASE_UPPER_STRING
    | NOT_LETTER
    ;

////  Lexer Rules

LETTER_CASE_UPPER_STRING
    :
    KeywordPrkr
    | KeywordPruefkreis
    | KeywordD014
    | KeywordD015
    ;

NOT_LETTER
    :
    NotLetter
    ;

////  Lexer Fragment Rules

fragment KeywordPrkr 
    :
    'PRKR'
    ;

fragment KeywordPruefkreis
    :
    'PRUEFKREIS'
    ;

fragment KeywordD014
    :
    'D014'
    ;

fragment KeywordD015
    :
    'D015'
    ;

fragment KeywordOrderedCharSet
    :
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    ;

fragment NotLetter
    : 
    Char
    ;

fragment Char
    : 
    .
    ;