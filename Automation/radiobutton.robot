*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}   https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}   chrome

*** Test Cases ***
checking radio buttons and check boxes
    open browser   ${url}   ${browser}
    maximize browser window
    set selenium speed  2seconds

     # Selecting the radio buttons
    select radio button   gender    female

    # Selecting check boxes
    select checkbox   Option 1
    select checkbox   Option 2

    unselect checkbox  Option 2

    close browser






*** Keywords ***
