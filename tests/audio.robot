*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
...
...         Keywords are imported from the resource file
Resource    ../src/keywords/Audio.resource


*** Test Cases ***
Smoke
    Hello World    Audio

Case 0
    Audio To Words    ${EXECDIR}${/}data/essential/example.m4a    ${EXECDIR}${/}data/output