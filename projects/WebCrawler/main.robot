*** Settings ***
Library    SeleniumLibrary
# This import need to be changed into the correct path (now using last version WUI from this repo)


*** Test Cases ***
Crawler Automation
    Open Browser       http://kan.nat100.top/index    Chrome
    Search Book        悲惨世界                           30
    Crawl Book List
    Sleep              10
    [Teardown]         Close Browser

*** Keyword ***
Search Book
    [Arguments]                    ${bookname}                 ${timeout}=60
    Input Text                     search                      ${bookname}
    Click Button                   搜索
    Wait Until Element Contains    xpath: //ul[@id='nr']//*    /                timeout=${timeout}

Crawl Book List
    ${count} =        Get Element Count    xpath: //ul[@id='nr']//li
    Log To Console    ""
    FOR               ${i}                 IN RANGE                           1    ${count}    3
    ${string}         Get Text             css: ul#nr > li:nth-child(${i})
    Log To Console    ${string}
    END