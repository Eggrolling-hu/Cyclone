*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
Library          ../packages/audio/Audio.py


*** Keywords ***
Hello World
    [Documentation]    Make sure basic function is alive
    [Arguments]        ${message}
    Smoke              ${message}

Audio To Words
    [Documentation]             extracts words from the audio 
    ...                         and saves them into the directory
    [Arguments]                 ${pdf_path}                          ${output_dir}
    Extract Words From Audio    ${pdf_path}                          ${output_dir}
