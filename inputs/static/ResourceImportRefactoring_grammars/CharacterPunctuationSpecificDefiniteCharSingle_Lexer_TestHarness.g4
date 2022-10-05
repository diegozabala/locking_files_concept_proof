lexer grammar CharacterPunctuationSpecificDefiniteCharSingle_Lexer_TestHarness;
import CharacterPunctuationSpecificDefiniteCharSingle_i_resource;

PUNCTUATION  // Note: Non-canonical form - canonical form is set.
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
    Char
    ;