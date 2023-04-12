*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TableValidation
         open browser   https://testautomationpractice.blogspot.com/   chrome
         maximize browser window
         ${rows}       get element count    xpath://table[@name='BookTable']/tbody/tr
         ${columns}    get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th

         log to console   ${rows}
         log to console   ${columns}

         ${data}     get text  xpath://table[@name='BookTable']/tbody/tr[4]/td[4]
         log to console  ${data}

         table column should contain   xpath://table[@name='BookTable']     1     BookName
         table row should contain      xpath://table[@name='BookTable']     5     Mukesh
         table cell should contain     xpath://table[@name='BookTable']     6   2   Amod
         table header should contain   xpath://table[@name='BookTable']      BookName


        close browser



*** Keywords ***
