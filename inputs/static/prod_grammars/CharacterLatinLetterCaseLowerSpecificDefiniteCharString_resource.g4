grammar CharacterLatinLetterCaseLowerSpecificDefiniteCharString_resource;

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
    LETTER_CASE_LOWER_STRING
    | NOT_LETTER
    ;

////  Lexer Rules

LETTER_CASE_LOWER_STRING
    :
    KeywordPrkr
    | KeywordPruefkreis
    | KeywordD014
    | KeywordD015
    | KeywordOrderedCharSet
    ;

NOT_LETTER
    :
    NotLetter
    ;

////  Lexer Fragment Rules

fragment KeywordPrkr 
    :
    'prkr'
    ;

fragment KeywordPruefkreis
    :
    'pruefkreis'
    ;

fragment KeywordD014
    :
    'd014'
    ;

fragment KeywordD015
    :
    'd015'
    ;

fragment KeywordOrderedCharSet
    :
    'abcdefghijklmnopqrstuvwxyz'
    ;

fragment NotLetter
    : 
    Char
    ;

fragment Char
    : 
    .
    ;