*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Alertwindow
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click button    xpath://button[normalize-space()='Click Me']
    sleep    3
    #press the ok button
    handle alert    accept

    #press the cancel button
#    handle alert    dismiss

    #verify the text on the alert window
#    alert should be present     Press a button!

    #verify the text is not there in alert window
#    alert should not be present    press a button! jhoot hai
    close browser