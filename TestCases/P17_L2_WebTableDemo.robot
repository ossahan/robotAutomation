*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com/tables
*** Test Cases ***
TC1
    Validations
*** Keywords ***
Table Test
    open browser    ${url}  ${browser}
    maximize browser window
#Capture the data of a specific cell
    ${data}=    get text    xpath://table[@id='table1']/tbody/tr[2]/td[5]
#get the count of columns in a specific row
    ${Columns}=     get element count  xpath://table[@id='table1']/tbody/tr[2]/td
#get the total number of rows in the table
    ${Rows}=    get text    xpath://table[@id='table1']

    log to console   ${data}
    log to console   ${Columns}
    log to console    ${Rows}
Validations
#Validate header
    open browser    ${url}  ${browser}
    maximize browser window
    #wait until element is enabled      xpath://table[@id='table1']
    table header should contain       id:table1              Action
#Validate row
    table row should contain         xpath://table[@id="table1"]/tbody       3     	    Jason
#Validate column
    table column should contain      xpath://table[@id='table1']     5      Web Site
#Validate cell
    table cell should contain      xpath://table[@id='table1']      3   3    fbach@yahoo.com
   close browser