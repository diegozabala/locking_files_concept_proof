grammar CharacterNonPrintableSpecificDefiniteSingleUnicode_resource;

////  Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    WHITE_SPACE_UNICODE
    | NOT_WHITE_SPACE
    ;

////  Lexer Rules

//// Principle
//  Rule: One-to-one terminal rule to literal, each character
//  used should have its own terminal and at most one literal referenced

// PROS
// Granular enough to be copied into grammars that need only a subset Of these foChar
// Very explicit about what characters the rules reference, more meaningful
// A well-used classification
// CONS
// Much more verbose
// More difficult to review since the rules covers more lines, cognitive burdensome
// Greater number Of rules introduced


//  OBSERVATION: These 'characters' are not easy to read in their 'bare' (terminal) form - so named fragments is a big improvement in readability.
//  Regex version

WHITE_SPACE_UNICODE
    : 
    NullChar
    | StartOfHeading
    | StartOfText
    | EndOfText
    | EndOfTransmission
    | EnquiryChar
    | AcknowledgeChar
    | BellChar
    | Backspace
    | VerticalTab
    | ShiftOut
    | ShiftIn
    | DataLinkEscape
    | NegativeAcknowledgeChar
    | SynchronousIdle
    | EndOfTransmissionBlock
    | CancelChar
    | EndOfMedium
    | SubstituteChar
    | EscapeChar
    | FileSeparator
    | GroupSeparator
    | RecordSeparator
    | UnitSeparator
    | Delete
    | NotWhiteSpace
   ;

NOT_WHITE_SPACE
    :
    NotWhiteSpace
    ;

// Lexer Terminal Fragment Rules
  
fragment Space
    :
    '\u0020'
    ;

fragment NullChar
    :
    '\u0000'
    ;

fragment StartOfHeading
    :
    '\u0001'
    ;

fragment StartOfText
    :
    '\u0002'
    ;

fragment EndOfText
    :
    '\u0003'
    ;

fragment EndOfTransmission
    :
    '\u0004'
    ;

fragment EnquiryChar
    :
    '\u0005'
    ;

fragment AcknowledgeChar
    :
    '\u0006'
    ;

fragment BellChar
    :
    '\u0007'
    ;

fragment Backspace
    :
    '\u0008'
    ;

fragment VerticalTab
    :
    '\u000B'
    ;

fragment ShiftOut
    :
    '\u000E'
    ;

fragment ShiftIn
    :
    '\u000F'
    ;

fragment DataLinkEscape
    :
    '\u0010'
    ;

fragment NegativeAcknowledgeChar
    :
    '\u0015'
    ;

fragment SynchronousIdle
    :
    '\u0016'
    ;

fragment EndOfTransmissionBlock
    :
    '\u0017'
    ;

fragment CancelChar
    :
    '\u0018'
    ;

fragment EndOfMedium
    :
    '\u0019'
    ;

fragment SubstituteChar
    :
    '\u001A'
    ;

fragment EscapeChar
    :
    '\u001B'
    ;

fragment FileSeparator
    :
    '\u001C'
    ;

fragment GroupSeparator
    :
    '\u001D'
    ;

fragment RecordSeparator
    :
    '\u001E'
    ;

fragment UnitSeparator
    :
    '\u001F'
    ;

 fragment Delete
    :
    '\u007F'
    ;

fragment NotWhiteSpace
    : 
    Char
    ;

fragment Char
    : 
    .
    ;