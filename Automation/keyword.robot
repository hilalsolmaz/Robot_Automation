*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${url1}      https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
${url2}      https://www.google.com/
${browser}  chrome


*** Test Cases ***
practiceform
    ${pagetitle}    launching browser    ${url2}    ${browser}
    log to console  ${pagetitle}
    log             ${pagetitle}
    #inputingvalues


*** Keywords ***
launching browser
    [Arguments]     ${weburl}  ${webbrowser}
    open browser    ${weburl}     ${webbrowser}
    maximize browser window
    ${title}        get title
    [Return]        ${title}
    sleep           3


