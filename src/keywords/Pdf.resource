*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
Library          ../packages/pdf/Pdf.py


*** Keywords ***
Hello World
    [Documentation]    Make sure basic function is alive
    [Arguments]        ${message}
    Smoke              ${message}

Convert Pages Of Pdf To Image
    [Documentation]    ...

Open Pdf
    [Documentation]    ...

Close Pdf
    [Documentation]    ...

Get Text From Pdf
    [Documentation]    ...

Get All Images From Pdf
    [Documentation]    ...

Get Numer Of Pages
    [Documentation]    ...

Save Pages As Images
    [Documentation]    ...
