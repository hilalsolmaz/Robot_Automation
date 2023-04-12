*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
draganddrop
      open browser  http://testautomationpractice.blogspot.com/       chrome
      maximize browser window
      drag and drop  xpath://img[@alt='the peaks of high tatras']    xpath://div[@id='trash']
      drag and drop  xpath://img[@alt='The chalet at the Green mountain lake']   xpath://div[@id='trash']

*** Keywords ***
