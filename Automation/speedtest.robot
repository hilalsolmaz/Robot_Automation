*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}  chrome



*** Test Cases ***
speedtest
       ${speed}    get selenium speed
       log to console   ${speed}
       open browser     ${url}      ${browser}
       maximize browser window
       set selenium speed  3 seconds

       input text  name:fname   Hilal
       input text  name:lname   Solmaz
       select radio button   gender   female
       select radio button   gender   other

       close browser

       ${speed}    get selenium speed
       log to console  ${speed}

*** Keywords ***
