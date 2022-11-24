*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../Resources/P2304RegisterKeywordss.robot

*** Variables ***
${Browser}   chrome
${Gender}   F
${firstname}  sican
${lastname}   hasan
${url}   https://demowebshop.tricentis.com/register
${email}  gertyekrh@hopkddlk.com
${Password}  hasanfare

*** Test Cases ***
Register Test
   Open my browser    ${url}    ${Browser}
   Mark your gender    ${Gender}
   Enter First Name    ${firstname}
   Enter Last Name    ${lastname}
   Enter Email    ${email}
   Enter Password    ${Password}
   Click register Button
   Verify Account Registered
   Close All Browsers




