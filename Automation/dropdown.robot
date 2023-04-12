*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}   chrome



*** Test Cases ***
dropdown
    open browser  ${url}   ${browser}
    maximize browser window

    #selecting from dropdown menu
    select from list by label  option    Option 1
    sleep  5
    select from list by index  option    3
    sleep  5

    close browser



*** Keywords ***
