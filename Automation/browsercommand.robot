*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Test Cases ***
browsercommands
       open browser    https://teknofest.org/tr/competitions/timeline/#     chrome
       maximize browser window

       sleep  3

       go to  https://kariyer.baykartech.com/en/

       sleep  3

       go back
       sleep  3
       close browser




*** Keywords ***
