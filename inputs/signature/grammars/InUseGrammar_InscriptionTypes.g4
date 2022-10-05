grammar InUseGrammar;

options { tokenVocab = InUseGrammarLexer; }

in_use_grammar
   : ( Alphanumeric | Delimiter | Hyphen)*
   ;

Delimiter
    : Space
    ;

Alphanumeric
    : Digit
    | Letter
    ;

Hyphen
    : '-'
    ;

Space
   : ' '
   ;

Digit
   : [0-9]
   ;

Letter
    : LetterUpperCase
    | LetterLowerCase
    ;

LetterUpperCase
    : [A-Z]
    ;

LetterLowerCase
    : [a-z]
    ;