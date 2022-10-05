lexer grammar CharacterNonPrintableSpecificDefiniteSingleUnicode_i_resource;

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