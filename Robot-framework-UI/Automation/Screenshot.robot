*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
browsercommand
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    capture element screenshot    //div[@id='Wikipedia1']       D:\RobotScreenShot\element1.png
    capture page screenshot       D:\RobotScreenShot\page1.png
    close browser