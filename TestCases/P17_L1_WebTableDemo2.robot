*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com/tables
*** Test Cases ***
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

    wait until element is visible    xpath://table[@id='table2']
    #table header should contain     xpath://table[@id='table2']          Action
#Validate row
    #table row should contain        xpath://table[@id='table2']     3       http://www.jdoe.com
#Validate column
    #table column should contain    xpath://table[@id='table2']  5   Web Site
#Validate cell
    table cell should contain    xapth://table[@id='table2']    4   3   fbach@yahoo.com
   close browser