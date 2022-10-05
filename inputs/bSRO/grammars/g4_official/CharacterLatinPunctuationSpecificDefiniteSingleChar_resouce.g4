grammar CharacterLatinPunctuationSpecificDefiniteSingleUnicode_resouce;

////  Imports
// CharacterAnalysis.g4
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


fragment Punctuation
    :
    
    ;

fragment Ampersand
    :
    '/u0026'
    ;

fragment Asterisk
    :
    '/u002A'
    ;

fragment AtSign
    :
    '/u0040'
    ;

fragment BackTick
    :
    '/u0060'
    ;

fragment BracketLeft
    :
    '/u0028'
    ;

fragment BracketLeftCurly
    :
    '/u007B'
    ;

fragment BracketLeftSquare
    :
    '/u005B'
    ;
        
fragment BracketRight
    :
    '/u0029'
    ;

fragment BracketRightCurly
    :
    '/u007D'
    ;

fragment BracketRightSquare
    :
    '/u005D'
    ;

fragment Caret
    :
    '/u005E'
    ;

fragment Colon
    :
    '/u003A'
    ;
    
fragment Comma
    :
    '/u002C'
    ;

fragment DollarSign
    :
    '/u0024'
    ;

fragment Exclamation
    :
    '/u0021'
    ;

fragment Hyphen
    :
    '/u002D'
    ;
      
fragment NumberSign
    :
    '/u0023'
    ;

fragment Percent
    :
    '/u0025'
    ;

fragment Period
    :
    '/u002E'
    ;

fragment Pipe
    :
    '/u007C'
    ;  

fragment PlusSign
    :
    '/u002B'
    ;

fragment QuestionMark
    :
    '/u003F'
    ;
    
fragment QuoteDouble
    :
    '/u0022'
    ;

fragment QuoteSingle
    :
    '/u0027'
    ;

fragment SemiColon
    :
    '\u003B'
    ;
          
fragment SlashBack
    :
    '\u005C'
    ;

fragment SlashForward
    :
    '\u002F'
    ;

fragment SignEquals
    :
    '\u003D'
    ;

fragment SignGreaterThan
    :
    '\u003E'
    ;     

fragment SignLessThan
    :
    '\u003C'
    ;
    
fragment Tilde
    :
    '\u007E'
    ;

fragment Underscore
    :
    '\u005F'
    ;
    
fragment NotPunctuation
    : 
    Char
    ;

fragment Char
    : 
    .
    ;