*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.baidu.com/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To Baidu Page
    Input Search Content                123
    Submit Credentials

*** Keywords ***
Open Browser To Baidu Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Input Search Content
    [Arguments]    ${username}
    Input Text    kw    ${username}
    Sleep     1


Submit Credentials
    Click Button    su

Welcome Page Should Be Open
    Title Should Be    Welcome Page