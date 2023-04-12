*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}  chrome



*** Test Cases ***
speedtest
       open browser     ${url}      ${browser}
       maximize browser window
       set selenium timeout  10 seconds
       wait until page contains  This is your_layout two  # 5 seconds


       input text  name:fname   Hilal
       input text  name:lname   Solmaz
       select radio button   gender   female
       select radio button   gender   other

       close browser



*** Keywords ***
