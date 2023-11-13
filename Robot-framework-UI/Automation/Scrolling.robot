*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
scrollingdown
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep    3seconds
#    execute javascript    window.scrollTo(0,1200)
#    scroll element into view    xpath://table[@name='BookTable']
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    2seconds
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    close browser