*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
practiceform
     ${pagetitle}       launchingBrowser    ${url}      ${browser}
     log to console    ${pagetitle}
     inputingValue

*** Keywords ***
launchingBrowser
    [Arguments]    ${weburl}    ${webbrowser}
    open browser    ${weburl}   ${webbrowser}
    maximize browser window
    ${titlle}       get title
    [Return]        ${titlle}

inputingValue
    input text    css:body.variant-wide:nth-child(2) div.content:nth-child(4) div.content-outer div.fauxborder-left.content-fauxborder-left div.content-inner div.main-outer:nth-child(3) div.fauxborder-left.main-fauxborder-left div.region-inner.main-inner div.columns.fauxcolumns div.columns-inner:nth-child(4) div.column-left-outer div.column-left-inner aside:nth-child(1) div.sidebar.section div.widget.HTML:nth-child(2) div.widget-content > button:nth-child(1)      Coders
    input text    xpath:/html[1]/body[1]/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[4]/div[2]/div[1]/aside[1]/div[1]/div[2]/div[1]/button[1]       Arcade