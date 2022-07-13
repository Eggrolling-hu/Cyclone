*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
...
...         Keywords are imported from the resource file
Resource    ../src/keywords/Pdf.resource


*** Test Cases ***
Smoke
    Hello World    Pdf

Case 0
    Extract Images And Words From PDF    ${EXECDIR}${/}data/essential/example.pdf    ${EXECDIR}${/}data/output