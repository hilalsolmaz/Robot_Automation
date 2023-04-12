*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${URL}       https://admin-demo.nopcommerce.com/
${BROWSER}   chrome



*** Keywords ***
Opening my browser
    open browser  ${URL}  ${BROWSER}
    maximize browser window

Closing my browsers
    close all browsers

Logining into page
    go to  ${URL}

inputing Username
    [Arguments]   ${username}
    input text   id:Email   ${username}

inputing password
    [Arguments]   ${password}
    input text  id:Password  ${password}

click login button
    click element  xpath://button[normalize-space()='Log in']

click log out button
    click link     Logout

Error message should be visible
    page should contain  Login was unsuccessful.

Dashboard page should be visible
    page should contain   Dashboard
