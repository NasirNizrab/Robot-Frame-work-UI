*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}          https://www.google.com/
${browser}      chrome
*** Test Cases ***
For_Loop_check
    open browser    ${url}      ${browser}
    maximize browser window
    input text    xpath:(//input[@title='Search'])[1]       RCV Academy
    click button    xpath:(//input[@name='btnI'])[2]
    @{result_on_page}=      Get WebElements    xpath:(//div[@id='rso'])[1]
    FOR  ${element}   IN    @{result_on_page}
    ${text}=       get text    ${element}
    END
    close browser
