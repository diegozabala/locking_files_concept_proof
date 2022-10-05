grammar CharacterNonPrintableSpecificDefiniteSingleUnicode_Parser_TestHarness;
import CharacterNonPrintableSpecificDefiniteSingleUnicode_Lexer_TestHarness;

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