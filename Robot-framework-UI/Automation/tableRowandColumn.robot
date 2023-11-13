*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
validateTableRC
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}  get element count    xpath://table[@name='BookTable']/tbody/tr/th
    log to console    ${rows}
    log to console    ${columns}

    ${text1}    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    ${text2}    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[4]
    ${text3}    get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[4]
    log to console    ${text1}
    log to console    ${text2}
    log to console    ${text3}

    table column should contain    xpath://table[@name='BookTable']     1       Master In Selenium
    table row should contain       xpath://table[@name='BookTable']     6       JAVA

    table cell should contain      xpath://table[@name='BookTable']     5   3   Selenium
    table header should contain    xpath://table[@name='BookTable']     Price
    
    close browser