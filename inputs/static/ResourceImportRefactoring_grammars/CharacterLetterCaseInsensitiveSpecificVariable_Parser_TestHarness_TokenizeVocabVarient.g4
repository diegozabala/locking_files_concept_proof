grammar CharacterLetterCaseInsensitiveSpecificVariable_Parser_TestHarness_TokenizeVocabVarient;
options { tokenVocab=CharacterLetterCaseInsensitiveSpecificVariable_Lexer_TestHarness; }

//// Parser Rules

foCharStream
    :
    foChar*
    EOF
    ;

foChar
    :
    LETTER_CASE_INSENSITIVE
    | NOT_LETTER_CASE_INSENSITIVE
    ;