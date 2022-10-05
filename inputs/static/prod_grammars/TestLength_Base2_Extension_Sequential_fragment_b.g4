lexer grammar Length_Base2_Extension_Sequential_fragment_b;
import Length_Base2_fragment_b;

//Note: these ranges are generated sequentially by adding one char at a time
//Note: the sequential fragments are ordered by length to facilitate visualising adding one char at a time
/* Note: We haven't coded rules for all numbers but we should add the rule
here first before using the rule in another grammar  */

fragment FromOneUpToThreeChar   //decimal 2 (binary 10) + 1 = 3
    : 
    FromOneUpToTwoChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFiveChar   //decimal 4 (binary 100) + 1 = 5
    : 
    FromOneUpToFourChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSixChar   //decimal 5 + 1 = 6
    : 
    FromOneUpToFiveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSevenChar   //decimal 6 + 1 = 7
    : 
    FromOneUpToSixChar
    ExactlyOneChar?
    ;

fragment FromOneUpToNineChar   //decimal 8 (binary 1000) + 1 = 9
    : 
    FromOneUpToEightChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTenChar   //decimal 9 + 1 = 10
    : 
    FromOneUpToNineChar
    ExactlyOneChar?
    ;

fragment FromOneUpToElevenChar   //decimal 10 + 1 = 11
    : 
    FromOneUpToTenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwelveChar   //decimal 11 + 1 = 12
    : 
    FromOneUpToElevenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThirteenChar   //decimal 12 + 1 = 13
    : 
    FromOneUpToTwelveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFourteenChar   //decimal 13 + 1 = 14
    : 
    FromOneUpToThirteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFifteenChar   //decimal 14 + 1 = 15
    : 
    FromOneUpToFourteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSeventeenChar   //decimal 16 (binary 10000) + 1 = 17
    : 
    FromOneUpToSixteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToEighteenChar   //decimal 17 + 1 = 18
    : 
    FromOneUpToSeventeenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToNineteenChar   //decimal 18 + 1 = 19
    : 
    FromOneUpToEighteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyChar   //decimal 19 + 1 = 20
    : 
    FromOneUpToNineteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyOneChar   //decimal 20 + 1 = 21
    : 
    FromOneUpToTwentyChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyTwoChar   //decimal 21 + 1 = 22
    : 
    FromOneUpToTwentyOneChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyThreeChar   //decimal 22 + 1 = 23
    : 
    FromOneUpToTwentyTwoChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyFourChar   //decimal 23 + 1 = 24
    : 
    FromOneUpToTwentyThreeChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyFiveChar   //decimal 24 + 1 = 25
    : 
    FromOneUpToTwentyFourChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentySixChar   //decimal 25 + 1 = 26
    : 
    FromOneUpToTwentyFiveChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentySevenChar   //decimal 26 + 1 = 27
    : 
    FromOneUpToTwentySixChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyEightChar   //decimal 27 + 1 = 28
    : 
    FromOneUpToTwentySevenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyNineChar   //decimal 28 + 1 = 29
    : 
    FromOneUpToTwentyEightChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThirtyChar   //decimal 29 + 1 = 30
    : 
    FromOneUpToTwentyNineChar
    ExactlyOneChar?
    ;

fragment FromOneUpToThirtyOneChar   //decimal 30 + 1 = 31
    : 
    FromOneUpToThirtyChar
    ExactlyOneChar?
    ;