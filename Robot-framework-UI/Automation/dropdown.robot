*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  https://www.facebook.com/campaign/landing.php?campaign_id=1653377901&extra_1=s%7Cc%7C318305677145%7Ce%7Csign%20in%20facebook%7C&placement=&creative=318305677145&keyword=sign%20in%20facebook&partner_id=googlesem&extra_2=campaignid%3D1653377901%26adgroupid%3D65139787642%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-311595201046%26loc_physical_ms%3D1011088%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=Cj0KCQiA37KbBhDgARIsAIzce144O5ZBy8VMEQJqRm8zj65tX1d0amn8Z0UBsHvw21LVxy4Us6Yz1RgaAhI8EALw_wcB
${browser}    chrome
*** Test Cases ***
DropDown
    Open Browser     ${url}      ${browser}
    Maximize Browser Window
    set selenium speed    2seconds
    # set selenium timeout      10seconds
    select from list by label    birthday_day   3
    select from list by label    birthday_month     Sep
    select from list by label    birthday_year      1996
    close browser
    #close all browsers

*** Keywords ***
