grammar AnalysisCharacterPopulation;


charStream
    : char+
    ;

char
    : UPPERCASE
    | LOWERCASE
    | DIGIT
    | OTHER
    | EMPTY_CELL
    ;

////Lexer Rules

UPPERCASE
    :  [A-Z]
    ;

LOWERCASE
    :  [a-z]
    ;

DIGIT
    :  [0-9]
    ;

OTHER
    : .
    ;

EMPTY_CELL
    : EOF
    ;
