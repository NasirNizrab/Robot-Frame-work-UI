*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      chrome
*** Test Cases ***
check_If_Else
    open browser        ${url}      ${browser}
    maximize browser window
    input text           id:user-name      standard_user
    input text           id:password       secret_sauce
    click button         xpath://input[@id='login-button']
    ${item_on_page}      get element count    xpath://div[@id='inventory_container']//div//div[@id='inventory_container']
    RUN KEYWORD IF     ${item_on_page} == 10  keyword1-go     ELSE IF   ${item_on_page} < 10 and ${item_on_page} > 6    keyword2
                       ...    ELSE    keyword3
*** Keywords ***
keyword1-go
    log to console    FOUND items as expected
    close browser
keyword2
    log to console    FOUND LESS than expected items
    close browser
keyword3
    log to console    EXCEPTION
    close browser