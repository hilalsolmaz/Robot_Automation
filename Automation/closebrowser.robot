*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
closingbrowser
        open browser  https://kariyer.baykartech.com/tr/      chrome
        maximize browser window
        sleep   3

        open browser  https://baykartech.com/tr/       chrome
        maximize browser window
        sleep  3

        close all browsers




*** Keywords ***
