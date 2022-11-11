*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://sockston.com/
${browser}    chrome


*** Test Cases ***
TC1

        ${PageTitle}=    launchBrowser    ${url}     ${browser}
        log to console      ${PageTitle}
        log      ${PageTitle}
        click link    xpath://*[@id="page"]/header/div[2]/div/div/section[2]/div/div/div[1]/div/div/div[2]/div/div/a[1]

        close browser

*** Keywords ***
launchBrowser
        [Arguments]    ${appurl}    ${appbrowser}
        open browser    ${appurl}     ${appbrowser}
        maximize browser window
        ${title}    get title
        [Return]    ${title}
