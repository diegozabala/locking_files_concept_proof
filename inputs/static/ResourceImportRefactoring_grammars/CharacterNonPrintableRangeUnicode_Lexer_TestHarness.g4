lexer grammar CharacterNonPrintableRangeUnicode_Lexer_TestHarness;  
import CharacterSet_i_resource, TokeniseChar_i_resource;

WHITE_SPACE   // @justin - this is in a file called NonPrintable. Is 'NonPrintable' closer to the name on your powerpoints - if so, should we harmonise the names? 
    : 
    UnicodeCategorySpace
    | UnicodeCategoryControl
    ;

NOT_WHITE_SPACE
    :
    Char
    ;