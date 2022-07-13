*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://admin.hdedu.com/login
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To HD Page
    Wait For Logging
    Go To Work Page
    Backtrack Judgement
    Sleep    10
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To HD Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Wait For Logging
    ${rc} =   Set Variable  0
    WHILE    ${rc} == 0
        ${rc} =   Get Element Count   //*[contains(text(), "公开课")]
        Sleep           1
    END

Go To Work Page
    Click Element   xpath: //*[contains(text(), "公开课")]
    Sleep           1
    Click Element   xpath: //*[contains(text(), "课程质量审核列表")]
    Sleep           1
    Click Element   xpath: //*[text() = "审核"][1]
    Sleep           1
    
Backtrack Judgement
    @{elements}=   Get WebElements   xpath: //*[text() = "是"]
    FOR   ${element}   IN   @{elements}
        Click Element   ${element}
        Sleep           0.2
    END
