*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary
*** Variables ***
${url}  https://www.google.com/
${browser}    chrome

*** Test Cases ***
Google
    Open Browser     ${url}      ${browser}
    Maximize Browser Window
    Sleep   2
    input text  css:input[class='gLFyf gsfi']   Amazon
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    clear element text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
    sleep   2
    input text  xpath://body/div[@id='searchform']/div[2]/form[1]/div[1]/div[1]/div[2]/div[1]/div[2]/input[1]      facebook
    click button    xpath://body/div[@id='searchform']/div[2]/form[1]/div[1]/div[1]/div[2]/button[1]

    Close Browser

*** Keywords ***
Opengoogle

