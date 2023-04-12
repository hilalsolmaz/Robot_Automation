*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
Suite Setup   Opening my browser
Suite Teardown  Closing my browsers
Test Template   Invalid login

*** Test Cases ***                 username                 password
right user wrong pwd               hilalslmaz@outlook.com   Hilal1907.
wrong user right pwd               adm@yourstore.com        admin
right user empty pwd               admin@yourstore.com      ${EMPTY}
empty user right pwd               ${EMPTY}                 admin
wrong user wrong pwd               adm@yourstore.com        xyz



*** Keywords ***
Invalid login
     [Arguments]     ${username}     ${password}
     inputing Username   ${username}
     inputing password   ${password}
     click login button
     Resources.Error Message Should Be Visible

