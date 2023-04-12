*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${browser}  chrome



*** Test Cases ***
speedtest
       Open browser   ${url}  ${browser}
       maximize browser window
       ${wait}   get selenium implicit wait
       log to console  ${wait}

       set selenium implicit wait  10 seconds

       ${wait}   get selenium implicit wait
       log to console  ${wait}


       input text  name:fname   Hilal
       input text  name:lname   Solmaz
       select radio button   gender   female
       select radio button   gender   other

       close browser


*** Keywords ***
