*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
...
...         Keywords are imported from the resource file
Resource    ../src/keywords/Video.resource


*** Test Cases ***
Smoke
    Hello World    Video

Case 0
    Get Audio From Video    ${EXECDIR}${/}data/essential/example.mp4    ${EXECDIR}${/}data/output

Case 1
    Get Images From Video    ${EXECDIR}${/}data/essential/example.mp4    ${EXECDIR}${/}data/output    10.0