grammar CharacterNonPrintableSpecificDefiniteSingleRegex_Parser_TestHarness;
import CharacterNonPrintableSpecificDefiniteSingleRegex_Lexer_TestHarness;

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    WHITE_SPACE_REGEX
    | NOT_WHITE_SPACE
    ;