*** Settings ***
Library   SeleniumLibrary


*** Variables ***




*** Test Cases ***
windowsclose
     open browser   https://robotframework.org/      chrome
     maximize browser window
     sleep   3
     click link   xpath://a[normalize-space()='AppiumLibrary']
     sleep  3
     switch window  Robot Framework
     sleep  3
     close window
     sleep  3
     close browser



*** Keywords ***
