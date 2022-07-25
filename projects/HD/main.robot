*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
...
...    Keywords are imported from the resource file

Resource    ../../src/keywords/Video.resource
Resource    ../../src/keywords/Audio.resource


*** Test Cases ***

Step 1
    Get Audio From Video    /Users/huxiao/Documents/document/HD/同步拓展课1_2022-06-26 18_00_00-2022-06-26 20_00_00.mp4    ${EXECDIR}${/}data/output


Step 2
    Audio To Words    ${EXECDIR}${/}data/output/audio.mp3    ${EXECDIR}${/}data/output

