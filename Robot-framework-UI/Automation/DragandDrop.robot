*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
scrollingdown
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    drag and drop    //table[@name='BookTable']     //div[@id='trash']
    sleep    2seconds
    drag and drop    //img[@alt='The chalet at the Green mountain lake']        //div[@id='trash']
    sleep    2seconds
    close browser
