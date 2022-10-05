grammar CharacterPunctuationSpecificDefiniteCharSingle_resouce;

////  Parser Rules

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

////  Lexer Rules

PUNCTUATION
    :
    Ampersand
    | Asterisk
    | AtSign
    | BackTick
    | BracketLeft
    | BracketLeftCurly
    | BracketLeftSquare
    | BracketRight
    | BracketRightCurly
    | BracketRightSquare
    | Caret
    | Colon
    | Comma
    | DollarSign
    | Exclamation
    | Hyphen
    | NumberSign
    | Percent
    | Period
    | Pipe
    | PlusSign
    | QuestionMark
    | QuoteDouble
    | QuoteSingle
    | SemiColon
    | SignEquals
    | SignGreaterThan
    | SignLessThan
    | SlashBack
    | SlashForward
    | Tilde
    | Underscore
    ;

NOT_PUNCTUATION
    :
    NotPunctuation
    ;

////  Lexer Fragment Rules

// Lexer Terminal Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced
// Uses a single grouping of punctuation

// PROS
// Granular enough to be copied into grammars that need only a subset of these foChar
// Very explicit about what characters the rules reference, more meaningful
// Single grouping is easier to recopy
// CONS
// Single grouping is less granular
// Much more verbose
// More difficult to review since the rules covers more lines, cognitive burdensome
// Greater number of rules introduced

fragment Ampersand
    :
    '&'
    ;

fragment Asterisk
    :
    '*'
    ;

fragment AtSign
    :
    '@'
    ;

fragment BackTick
    :
    '`'
    ;

fragment BracketLeft
    :
    '('
    ;

fragment BracketLeftCurly
    :
    '{'
    ;

fragment BracketLeftSquare
    :
    '['
    ;
        
fragment BracketRight
    :
    ')'
    ;

fragment BracketRightCurly
    :
    '}'
    ;

fragment BracketRightSquare
    :
    ']'
    ;

fragment Caret
    :
    '^'
    ;

fragment Colon
    :
    ':'
    ;
    
fragment Comma
    :
    ','
    ;

fragment DollarSign
    :
    '$'
    ;

fragment Exclamation
    :
    '!'
    ;

fragment Hyphen
    :
    '-'
    ;
      
fragment NumberSign
    :
    '#'
    ;

fragment Percent
    :
    '%'
    ;

fragment Period
    :
    '.'
    ;

fragment Pipe
    :
    '|'
    ;  

fragment PlusSign
    :
    '+'
    ;

fragment QuestionMark
    :
    '?'
    ;
    
fragment QuoteDouble
    :
    '"'
    ;

fragment QuoteSingle
    :
    '\''
    ;

fragment SemiColon
    :
    ';'
    ;
          
fragment SlashBack
    :
    '\\'
    ;

fragment SlashForward
    :
    '/'
    ;

fragment SignEquals
    :
    '='
    ;

fragment SignGreaterThan
    :
    '>'
    ;     

fragment SignLessThan
    :
    '<'
    ;
    
fragment Tilde
    :
    '~'
    ;

fragment Underscore
    :
    '_'
    ;
    
fragment NotPunctuation
    : 
    Char
    ;

fragment Char
    : 
    .
    ;