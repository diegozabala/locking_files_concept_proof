lexer grammar CharacterNonPrintableSpecificDefiniteSingleRegex_Lexer_TestHarness;
import  CharacterNonPrintableSpecificDefiniteSingleRegex_i_resource, TokeniseChar_i_resource;

WHITE_SPACE_REGEX
    : 
    Tabulation 
    | CarriageReturn
    | FormFeed
    | LineFeed
    ;

NOT_WHITE_SPACE
    :
    Char
    ;