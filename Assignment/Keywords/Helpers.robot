*** Settings ***
Resource        ../Keywords/ImportFiles.robot

*** Keywords ***

Wait For Element And Click
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}    timeout=10s
    Click Element    ${element}