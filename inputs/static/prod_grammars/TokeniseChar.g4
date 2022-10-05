grammar TokeniseChar;

////Parser Rules

foCharStream
    :
    CHAR*
    EOF
    ;

////Lexer Rules

CHAR
    : 
    Char
    ;

//lexer fragment rules

//lexer terminal rules

fragment Char
    :
    .
    ;