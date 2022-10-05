lexer grammar Length_Base2_fragment_b;
import Char_fragment_b;

//Note: the length ranges are measured from one char. Zero length is handled in a separate way.

/* Note: We haven't coded rules for all numbers 
but we should add the rule here first before using the rule in another grammar  */

fragment ExactlyOneChar   //binary 1
    :
    Char
    ;

fragment FromOneUpToTwoChar   //binary 10
    : 
    ExactlyOneChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFourChar   //binary 100
    : 
    FromOneUpToTwoChar
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToEightChar   //binary 1000
    : 
    FromOneUpToFourChar
    FromOneUpToFourChar?
    ;

fragment FromOneUpToSixteenChar   //binary 10000
    : 
    FromOneUpToEightChar
    FromOneUpToEightChar?
    ;

fragment FromOneUpToThirtyTwoChar   //binary 100000
    : 
    FromOneUpToSixteenChar
    FromOneUpToSixteenChar?
    ;

fragment FromOneUpToSixtyFourChar   //binary 1000000
    : 
    FromOneUpToThirtyTwoChar
    FromOneUpToThirtyTwoChar?
    ;

fragment FromOneUpToOneHundredAndTwentyEightChar   //binary 10000000
    : 
    FromOneUpToSixtyFourChar
    FromOneUpToSixtyFourChar?
    ;

fragment FromOneUpToTwoHundredAndFiftySixChar   //binary 100000000
    : 
    FromOneUpToOneHundredAndTwentyEightChar
    FromOneUpToOneHundredAndTwentyEightChar?
    ;

fragment FromOneUpToFiveHundredAndTwelveChar   //binary 1000000000
    : 
    FromOneUpToTwoHundredAndFiftySixChar
    FromOneUpToTwoHundredAndFiftySixChar?
    ;

fragment FromOneUpToOneThousandAndTwentyFourChar   //binary 10000000000
    : 
    FromOneUpToFiveHundredAndTwelveChar
    FromOneUpToFiveHundredAndTwelveChar?
    ;

fragment OneOrMoreThanOneChar
    :
    ExactlyOneChar+
    ;