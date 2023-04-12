*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
Mouseaction
     open browser  http://testautomationpractice.blogspot.com/      chrome
     maximize browser window
     double click element   xpath://button[normalize-space()='Copy Text']
     sleep  3
     close browser




*** Keywords ***
