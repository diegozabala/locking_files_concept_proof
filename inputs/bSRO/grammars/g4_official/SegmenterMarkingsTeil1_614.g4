grammar SegmenterMarkingsTeil1_614;

//// this grammar doesn't treat the case of the marking -XXXXXXVAWS

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :   
    leftOfTheMarking
    | marking
    | endOfLine
    ;

endOfLine
    :
    END_OF_LINE
    ;

leftOfTheMarking
    :
    CHAR_CONTENT+
    ;

marking
    :
    MARKING
    ;

 ////Lexer Rules

 MARKING
    :
    (
        ExplicitSpaceDelimiter
        | ExplicitHyphenDelimiter
    )?
    Marking
    ;

END_OF_LINE
    :
    CharContainer
    | WindowsNewLine
    ;

CHAR_CONTENT
    :
    CharContent
    ;

////Lexer Terminals

fragment Marking
    :
    GeneralMaterial
    | HigherLevelCollectiveTLForEquipmentThatNeedsToBeRepaired
    | EmsrEquipmentThatNeedsToBeRepaired
    | CollectiveTLForRotatingEquipmentThatNeedsToBeRepaired
    | CollectiveTLForStaticEquipmentThatNeedsToBeRepaired
    | CollectiveTLForFunctionalEquipmentThatCanBeUsed
    | CollectiveTLForFunctionalEMSREquipmentThatCanBeUsed
    | CollectiveTLForFunctionalRotatingEquipmentThatCanBeUsed
    | CollectiveTLForFunctionalStaticEquipmentThatCanBeUsed
    | CollectiveTLForPermanentlyDecommissionedTechnicalLocations
    | CollectiveTLForPermanentlyDecommissionedEquipment
    | CollectiveTLForTemporarilyDecommissionedTechnicalLocations
    | CollectiveTLForTemporarilyDecommissionedEquipment
    | FilingOfSOXRelevantDocuments
    | CollectiveTLForDeletedTL
    | CollectiveTLForDeletedEquipment
    ;

fragment GeneralMaterial
    :
    'MAT'
    ;

fragment HigherLevelCollectiveTLForEquipmentThatNeedsToBeRepaired
    :
    'EQUIPMENT REPARATUR'
    ;

fragment EmsrEquipmentThatNeedsToBeRepaired
    :
    'REPARATUR EMSR'
    ;

fragment CollectiveTLForRotatingEquipmentThatNeedsToBeRepaired
    :
    'REPARATUR ROTATING'
    ;

fragment CollectiveTLForStaticEquipmentThatNeedsToBeRepaired
    :
    'REPARATUR STATIC'
    ;

fragment CollectiveTLForFunctionalEquipmentThatCanBeUsed
    :
    'EQUIPMENT RESERVE'
    ;

fragment CollectiveTLForFunctionalEMSREquipmentThatCanBeUsed
    :
    'RESERVE EMSR'
    ;

fragment CollectiveTLForFunctionalRotatingEquipmentThatCanBeUsed
    :
    'RESERVE ROTATING'
    ;
    
fragment CollectiveTLForFunctionalStaticEquipmentThatCanBeUsed
    :
    'RESERVE STATIC'
    ;

fragment CollectiveTLForPermanentlyDecommissionedTechnicalLocations
    :
    'STILE'
    ;

fragment CollectiveTLForPermanentlyDecommissionedEquipment
    :
    'STILE EQUIPMENT'
    ;

fragment CollectiveTLForTemporarilyDecommissionedTechnicalLocations
    :
    'STILV'
    ;

fragment CollectiveTLForTemporarilyDecommissionedEquipment
    :
    'STILV EQUIPMENT'
    ;

fragment FilingOfSOXRelevantDocuments
    :
    'SOX'
    ;

fragment CollectiveTLForDeletedTL
    :
    'ZREDUN'
    ;

fragment CollectiveTLForDeletedEquipment
    :
    'ZREDUNTAG'
    ;

// marking -XXXXXXVAWS needs to be handled as fragment TLForVawSRelevantSystemComponents

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

fragment Space
    :
    '\u0020'
    ; 

fragment Hyphen
    :
    '-'
    ;

fragment ExplicitSpaceDelimiter
    :
    Space
    ;

fragment ExplicitHyphenDelimiter
    :
    Hyphen
    ;

fragment CarriageReturn
    :  
    '\r'
    ;

fragment LineFeed
    :  
    '\n'
    ;


fragment NotCarriageReturnOrLineFeed
    : 
    ~(
        '\n' 
        | '\r'
    )
    ;

fragment CharContent
    :
    NotCarriageReturnOrLineFeed
    ;

fragment CharContainer 
    :   
    LineFeed 
    | CarriageReturn
    ;