*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${url}      https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}  chrome


*** Test Cases ***
listbox
    open browser   ${url}      ${browser}
    maximize browser window

    #selecting items from listbox
    select from list by label  owc    Option 1
    sleep    3
    select from list by label  owc    Option 2
    sleep    5
    select from list by index  owc     3

    close browser


*** Keywords ***
