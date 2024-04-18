*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.2dehands.be/



*** Test Cases ***
Handling DropDowns and Lists
    open browser    ${url}    ${browser}
    maximize browser window
    Sleep    2
    
    Select Frame    xpath://*[@id="sp_message_iframe_1109478"]
    click button    xpath://*[@title='Accepteren']
    Unselect Frame
    
    select from list by label  categoryId    Handtassen en Accessoires
    sleep    3
    select from list by index    categoryId    22
    sleep    3


    close browser

*** Keywords ***
