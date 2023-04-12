*** Settings ***

Library    SeleniumLibrary


*** Variables ***
${url}    https://www.flipkart.com
${browser}   chrome

*** Test Cases ***
InputBox
     Open browser  ${url}  ${browser}
     Maximize browser window
     sleep   2
     input text  xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]      Instagram
     click button  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
     clear element text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
     sleep  2
     input text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input     flipkart
     click button  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
*** Keywords ***