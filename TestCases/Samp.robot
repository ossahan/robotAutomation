*** Settings ***
Library  SeleniumLibrary
Library    String
Library  FakerLibrary


*** Test Cases ***
TC1
#    ${str1} =  Convert To Upper Case   osman
#              Log To Console   ${str1}
#              Should Be Equal As Strings    ${str1}    OSMAN
            
     ${str2} =  Generate Random String  5-10

                Log To Console    ${str2}
     ${count}    Get Substring    Helsinki   -2
     Log To Console    ${count}
     ${count}