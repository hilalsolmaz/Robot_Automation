*** Settings ***
Library   SeleniumLibrary


*** Variables ***


*** Test Cases ***
alertwindow
      open browser   https://testautomationpractice.blogspot.com/   chrome
      Maximize browser window
      click button   //button[@onclick='myFunction()']
      sleep  3

      #press the ok button!
      handle alert   accept

      #press the cancel button!
      handle alert   dismiss

      #verify the text on the alert window
      alert should be present     the text u want the verify will come here

      #verify the text is not there in alert window
      alert should not be present  the text u want to verify will come here


     close browser

*** Keywords ***
