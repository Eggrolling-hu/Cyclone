*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
Library          ../packages/image/Image.py

*** Settings ***
Library    Image

*** Keywords ***
Hello World
    [Documentation]    Make sure basic function is alive
    [Arguments]        ${message}
    Smoke              ${message}

Locate Image Area On Image
    [Documentation]    Search needleImage's location in haystackImage
    [Arguments]        ${needleImage}                                    ${haystackImage}    &{kwargs}
    ${res}=            Locate                                            ${needleImage}      ${haystackImage}    &{kwargs}
    Log                ${res}