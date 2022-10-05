lexer grammar Length_Base2_Extension_fragment_b;
import Length_Base2_fragment_b;

//Note: these ranges are generated individually from the binary base
//Note: the base binary fragments are ordered by length to facilitate translation into a binary number

/* Note: We haven't coded rules for all numbers 
but we should add the rule here first before using the rule in another grammar  */

fragment FromOneUpToThreeChar   //binary 11
    : 
    FromOneUpToTwoChar
    ExactlyOneChar?
    ;

fragment FromOneUpToFiveChar   //binary 101
    :
    FromOneUpToFourChar
    ExactlyOneChar?
    ;

fragment FromOneUpToSixChar   //binary 110 
    :
    FromOneUpToFourChar
    FromOneUpToTwoChar?
    ;
    
fragment FromOneUpToSevenChar   //binary 111
    :
    FromOneUpToFourChar
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;

fragment FromOneUpToNineChar   //binary 1001
    :
    FromOneUpToEightChar
    ExactlyOneChar?
    ;    

fragment FromOneUpToTenChar   //binary 1010
    :
    FromOneUpToEightChar
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToElevenChar   //binary 1011
    :
    FromOneUpToEightChar
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;

fragment FromOneUpToTwelveChar   //binary 1100
    :
    FromOneUpToEightChar
    FromOneUpToFourChar?
    ;

fragment FromOneUpToThirteenChar   //binary 1101
    :
    FromOneUpToEightChar
    FromOneUpToFourChar?
    ExactlyOneChar?
    ;    

fragment FromOneUpToFourteenChar   //binary 1110
    :
    FromOneUpToEightChar
    FromOneUpToFourChar?
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToFifteenChar   //binary 1111
    :
    FromOneUpToEightChar
    FromOneUpToFourChar?
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;

fragment FromOneUpToSeventeenChar   //binary 10001
    :
    FromOneUpToSixteenChar
    ExactlyOneChar?
    ;

fragment FromOneUpToEighteenChar   //binary 10010
    :
    FromOneUpToSixteenChar
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToNineteenChar   //binary 10011
    :
    FromOneUpToSixteenChar
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;    

fragment FromOneUpToTwentyChar   //binary 10100
    :
    FromOneUpToSixteenChar
    FromOneUpToFourChar?
    ;    

fragment FromOneUpToTwentyOneChar   //binary 10101
    :
    FromOneUpToSixteenChar
    FromOneUpToFourChar?
    ExactlyOneChar?    
    ;    

fragment FromOneUpToTwentyTwoChar   //binary 10110
    :
    FromOneUpToSixteenChar
    FromOneUpToFourChar?
    FromOneUpToTwoChar?    
    ;    

fragment FromOneUpToTwentyThreeChar   //binary 10011
    :
    FromOneUpToSixteenChar
    FromOneUpToFourChar?
    FromOneUpToTwoChar?  
    ExactlyOneChar?   
    ;    

fragment FromOneUpToTwentyFourChar   //binary 11000
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    ;

fragment FromOneUpToTwentyFiveChar   //binary 11001
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    ExactlyOneChar?  
    ;

fragment FromOneUpToTwentySixChar   //binary 11010
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToTwoChar?   
    ;   

fragment FromOneUpToTwentySevenChar   //binary 11011
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;

fragment FromOneUpToTwentyEightChar   //binary 11100
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToFourChar?
    ;

fragment FromOneUpToTwentyNineChar   //binary 11101
    :
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToFourChar?
    ExactlyOneChar?
    ;

fragment FromOneUpToThirtyChar   //binary 11110
    : 
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToFourChar?
    FromOneUpToTwoChar?
    ;

fragment FromOneUpToThirtyOneChar   //binary 11111
    : 
    FromOneUpToSixteenChar
    FromOneUpToEightChar?
    FromOneUpToFourChar?
    FromOneUpToTwoChar?
    ExactlyOneChar?
    ;