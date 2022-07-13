*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
Library          ../packages/video/Video.py


*** Keywords ***
Hello World
    [Documentation]    Make sure basic function is alive
    [Arguments]        ${message}
    Smoke              ${message}

Get Audio From Video
    [Documentation]             extracts words from the audio 
    ...                         and saves them into the directory
    [Arguments]                 ${pdf_path}                          ${output_dir}
    Extract Audio From Video    ${pdf_path}                          ${output_dir}

Get Images From Video
    [Documentation]              extracts words from the audio 
    ...                          and saves them into the directory
    [Arguments]                  ${pdf_path}                          ${output_dir}    ${n}
    Extract Images From Video    ${pdf_path}                          ${output_dir}    ${n}
