*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
scrolltest
     open browser           https://en.wikipedia.org/wiki/Main_Page     chrome
     maximize browser window
     sleep  3
     #execute javascript     window.scrollTo(0,1500)
     scroll element into view   //img[@alt='Marian Anderson']


*** Keywords ***
