*** Settings ***
Library    SeleniumLibrary
Library    String


*** Test Cases ***
${str}=  Convert To Title Case    osman
    Log To Console   ${str}