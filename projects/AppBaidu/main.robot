*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library          SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://pan.baidu.com/mbox/homepage#share/type=session
${BROWSER}      Chrome

*** Test Cases ***
Valid Login
    Open Browser    ${LOGIN URL}     ${BROWSER}
    Sleep           10
    [Teardown]      Close Browser

