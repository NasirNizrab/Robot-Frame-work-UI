*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
browsercommand
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep    3seconds
    go to    https://www.yahoo.com/
    sleep    3seconds
    go back
    sleep     3seconds
    close browser