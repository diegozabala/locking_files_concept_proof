grammar PartitionerBetween004And030_Cell;

/* Design note: length counts every character apart from container 
infrastructure */
// In the name of the rules, "char" is intended to refer to char content and exclude char container


foCharStream 
    :
    foCell?
    EOF
    ;

foCell
    :
    CELL_EXACTLY_000_CHAR
    | CELL_FROM_001_UP_TO_003_CHAR
    | CELL_FROM_004_UP_TO_030_CHAR
    | CELL_MORE_THAN_OR_EQUAL_031_CHAR
    ;

////Lexer Rules

CELL_EXACTLY_000_CHAR
    :
    CELL_EMPTY
    ; 

CELL_EMPTY
    :
    EndOfFile
    ;

CELL_FROM_001_UP_TO_003_CHAR
    : 
    FromOneUpToThreeChar
    ;

CELL_FROM_004_UP_TO_030_CHAR 
    : 
    CELL_FROM_001_UP_TO_003_CHAR
    FromOneUpToTwentySevenChar
    ;

CELL_MORE_THAN_OR_EQUAL_031_CHAR
    : 
    CELL_FROM_004_UP_TO_030_CHAR
    OneOrMoreThanOneChar
    ;

// fragment lexer rules

//lexer fragment rules

fragment OneOrMoreThanOneChar
    :
    ExactlyOneChar+
    ;

fragment ExactlyOneChar
    :
    Char
    ;

fragment EndOfFile
    :
    EOF
    ;   

fragment FromOneUpToTwoChar
    : 
    ExactlyOneChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThreeChar
    : 
    FromOneUpToTwoChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFourChar
    : 
    FromOneUpToTwoChar
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToFiveChar
    : 
    FromOneUpToFourChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSixChar
    : 
    FromOneUpToFiveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSevenChar
    : 
    FromOneUpToSixChar
    ExactlyOneChar?
    ;

fragment FromOneUpToEightChar
    : 
    FromOneUpToFourChar
    FromOneUpToFourChar?
    ;

fragment FromOneUpToNineChar
    : 
    FromOneUpToEightChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTenChar
    : 
    FromOneUpToNineChar
    ExactlyOneChar?
    ;

fragment FromOneUpToElevenChar
    : 
    FromOneUpToTenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwelveChar
    : 
    FromOneUpToElevenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThirteenChar
    : 
    FromOneUpToTwelveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFourteenChar
    : 
    FromOneUpToThirteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFifteenChar
    : 
    FromOneUpToFourteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSixteenChar
    : 
    FromOneUpToEightChar
    FromOneUpToEightChar?
    ;

fragment FromOneUpToSeventeenChar
    : 
    FromOneUpToSixteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToEighteenChar
    : 
    FromOneUpToSeventeenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToNineteenChar
    : 
    FromOneUpToEighteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyChar
    : 
    FromOneUpToNineteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyOneChar
    : 
    FromOneUpToTwentyChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyTwoChar
    : 
    FromOneUpToTwentyOneChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyThreeChar
    : 
    FromOneUpToTwentyTwoChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyFourChar
    : 
    FromOneUpToTwentyThreeChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyFiveChar
    : 
    FromOneUpToTwentyFourChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentySixChar
    : 
    FromOneUpToTwentyFiveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentySevenChar
    : 
    FromOneUpToTwentySixChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyEightChar
    : 
    FromOneUpToTwentySevenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyNineChar
    : 
    FromOneUpToTwentyEightChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThirtyChar
    : 
    FromOneUpToTwentyNineChar
    ExactlyOneChar?
    ;

//lexer terminal rules

fragment Char
    :
    .
    ;