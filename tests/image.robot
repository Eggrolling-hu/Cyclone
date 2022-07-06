*** Settings ***
Documentation    This is a resource file, that can contain variables and keywords.
...              Keywords defined here can be used where this Keywords.resource in loaded.
...
...         Keywords are imported from the resource file
Resource    ../src/keywords/Image.resource


*** Test Cases ***
Smoke
    Hello World    Image

Case 0
    ${result}=        Locate Image Area On Image    data/essential/needleImage.png    data/essential/haystackImage.png
    Log To Console    ${\n}${result}