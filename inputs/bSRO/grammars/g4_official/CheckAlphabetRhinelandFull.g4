grammar CheckAlphabetRhinelandFull;

////Imports
//AlphabetCaseInsensitiveLetters_resource
//AlphabetDigits_resource
//AlphabetCommonKnowledgeDelimiter_resource
//CheckAlphabetbyLineBinaryContainer_resource

////Parser Rules

foCharStream 
    :
    foLine*
    EOF
    ;

foLine
    :
    LINE_FROM_ALPHABET_RHINELAND
    | LINE_FROM_ALPHABET_FULL
    | END_OF_LINE
    ;

////Lexer Rules

LINE_FROM_ALPHABET_RHINELAND
    : 
    ALPHABET_RHINELAND_MEMBER+
    ;

ALPHABET_RHINELAND_MEMBER
    :
    DIGITS
    | DELIMITER
    | LETTER_CASE_INCLUSIVE
    ;
    
END_OF_LINE 
    :  
    WindowsNewLine 
    | LineFeed 
    | CarriageReturn 
    ;

LETTER_CASE_INCLUSIVE
    :
    LetterA
    | LetterB
    | LetterC
    | LetterD
    | LetterE
    | LetterF
    | LetterG
    | LetterH
    | LetterI
    | LetterJ
    | LetterK
    | LetterL
    | LetterM
    | LetterN
    | LetterO
    | LetterP
    | LetterQ
    | LetterR
    | LetterS
    | LetterT
    | LetterU
    | LetterV
    | LetterW
    | LetterX
    | LetterY
    | LetterZ
    ;

DIGITS
    :
    Zero
    | One
    | Two
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    ;

DELIMITER
    :
    Space
    | Hyphen
    ;

LINE_FROM_ALPHABET_FULL
    :
    (
        ALPHABET_RHINELAND_MEMBER  
        | AlphabetContent
    )+
    ;

//Lexer Fragment Rules

fragment WindowsNewLine
    :  
    CarriageReturn 
    LineFeed
    ;

//Lexer Terminal Rules

fragment LineFeed
    : 
    [\n]
    ;
  
fragment CarriageReturn
    : 
    [\r]
    ;

fragment Hyphen
    :
    '-'
    ;

fragment Space
    :
    ' '
    ;

fragment Zero
    :
    '0'
    ;

fragment One
    :
    '1'
    ;

fragment Two
    :
    '2'
    ;  

fragment Three
    :
    '3'
    ;

fragment Four
    :
    '4'
    ;

fragment Five
    :
    '5'
    ;

fragment Six
    :
    '6'
    ;

fragment Seven
    :
    '7'
    ;

fragment Eight
    :
    '8'
    ;

fragment Nine
    :
    '9'
    ;

fragment LetterA
    :
    UpperA
    | LowerA
    ;

fragment LetterB
    :
    UpperB
    | LowerB
    ;

fragment LetterC
    :
    UpperC
    | LowerC
    ;

fragment LetterD
    :
    UpperD
    | LowerD
    ;

fragment LetterE
    :
    UpperE
    | LowerE
    ;

fragment LetterF
    :
    UpperF
    | LowerF
    ;

fragment LetterG
    :
    UpperG
    | LowerG
    ;

fragment LetterH
    :
    UpperH
    | LowerH
    ;

fragment LetterI
    :
    UpperI
    | LowerI
    ;

fragment LetterJ
    :
    UpperJ
    | LowerJ
    ;
fragment LetterK
    :
    UpperK
    | LowerK
    ;
fragment LetterL
    :
    UpperL
    | LowerL
    ;

fragment LetterM
    :
    UpperM
    | LowerM
    ;

fragment LetterN
    :
    UpperN
    | LowerN
    ;

fragment LetterO
    :
    UpperO
    | LowerO
    ;

fragment LetterP
    :
    UpperP
    | LowerP
    ;

fragment LetterQ
    :
    UpperQ
    | LowerQ
    ;

fragment LetterR
    :
    UpperR
    | LowerR
    ;

fragment LetterS
    :
    UpperS
    | LowerS
    ;

fragment LetterT
    :
    UpperT
    | LowerT
    ;

fragment LetterU
    :
    UpperU
    | LowerU
    ;

fragment LetterV
    :
    UpperV
    | LowerV
    ;

fragment LetterW
    :
    UpperW
    | LowerW
    ;

fragment LetterX
    :
    UpperX
    | LowerX
    ;

fragment LetterY
    :
    UpperY
    | LowerY
    ;

fragment LetterZ
    :
    UpperZ
    | LowerZ
    ;

fragment LowerA
    :
    'a'
    ;

fragment LowerB
    :
    'b'
    ;  

fragment LowerC
    :
    'c'
    ;

fragment LowerD
    :
    'd'
    ;

fragment LowerE
    :
    'e'
    ;

fragment LowerF
    :
    'f'
    ;

fragment LowerG
    :
    'g'
    ;

fragment LowerH
    :
    'h'
    ;

fragment LowerI
    :
    'i'
    ;

fragment LowerJ
    :
    'j'
    ;

fragment LowerK
    :
    'k'
    ;

fragment LowerL
    :
    'l'
    ;

fragment LowerM
    :
    'm'
    ;

fragment LowerN
    :
    'n'
    ;

fragment LowerO
    :
    'o'
    ;

fragment LowerP
    :
    'p'
    ;

fragment LowerQ
    :
    'q'
    ;

fragment LowerR
    :
    'r'
    ;

fragment LowerS
    :
    's'
    ;

fragment LowerT
    :
    't'
    ;

fragment LowerU
    :
    'u'
    ;

fragment LowerV
    :
    'v'
    ;

fragment LowerW
    :
    'w'
    ;

fragment LowerX
    :
    'x'
    ;

fragment LowerY
    :
    'y'
    ;

fragment LowerZ
    :
    'z'
    ;

fragment UpperA
    :
    'A'
    ;

fragment UpperB
    :
    'B'
    ;  

fragment UpperC
    :
    'C'
    ;

fragment UpperD
    :
    'D'
    ;

fragment UpperE
    :
    'E'
    ;

fragment UpperF
    :
    'F'
    ;

fragment UpperG
    :
    'G'
    ;

fragment UpperH
    :
    'H'
    ;

fragment UpperI
    :
    'I'
    ;

fragment UpperJ
    :
    'J'
    ;

fragment UpperK
    :
    'K'
    ;

fragment UpperL
    :
    'L'
    ;

fragment UpperM
    :
    'M'
    ;

fragment UpperN
    :
    'N'
    ;

fragment UpperO
    :
    'O'
    ;

fragment UpperP
    :
    'P'
    ;

fragment UpperQ
    :
    'Q'
    ;

fragment UpperR
    :
    'R'
    ;

fragment UpperS
    :
    'S'
    ;

fragment UpperT
    :
    'T'
    ;

fragment UpperU
    :
    'U'
    ;

fragment UpperV
    :
    'V'
    ;

fragment UpperW
    :
    'W'
    ;

fragment UpperX
    :
    'X'
    ;

fragment UpperY
    :
    'Y'
    ;

fragment UpperZ
    :
    'Z'
    ;

fragment NotCarriageReturnOrLineFeed
    :
    ~(
        [\n]
        | [\r]
    )
    ;

fragment AlphabetContent
    :
    NotCarriageReturnOrLineFeed
    ;