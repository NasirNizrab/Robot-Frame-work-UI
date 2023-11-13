*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
windowsclose
    open browser    https://robotframework.org/         chrome
    maximize browser window
    set selenium speed    3seconds
    click link    xpath://a[normalize-space()='AppiumLibrary']
    switch window    Robot Framework
    close window
    close browser
