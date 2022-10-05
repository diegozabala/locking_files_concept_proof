lexer grammar CharacterNonPrintableSpecificDefiniteSingleUnicode_resource;
import CharacterNonPrintableSpecificDefiniteSingleUnicode_i_resource, TokeniseChar_i_resource;

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
    Char
    ;