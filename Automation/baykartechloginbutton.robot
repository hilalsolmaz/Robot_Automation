*** Settings ***
Documentation   Test the login button functionality of the BaykarTech careers website
Library         SeleniumLibrary

*** Variables ***
${BROWSER}      Chrome
${URL}          https://kariyer.baykartech.com/tr/

*** Test Cases ***
Verify Login Button Functionality
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    double click element    xpath=//*[@id="home"]/nav/div/div[1]/ul/li[2]/a
    Close Browser
