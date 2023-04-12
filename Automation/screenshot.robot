*** Settings ***
Library   SeleniumLibrary

*** Variables ***



*** Test Cases ***
screenrobot
    open browser              https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/    chrome
    maximize browser window

    capture element screenshot   //img[@id='drag1']     ca.png
    capture page screenshot     website.png

    close browser


*** Keywords ***
