*** Settings ***
Resource        ../Keywords/ImportFiles.robot

*** Keywords ***

Launching Url And Browser
    Open Browser    ${URL_Amz}    ${Browser}
    Maximize Browser Window

Scroll Down Upto Today'sDeal
    Wait Until Element Is Visible    ${Today'sDeal}
    Scroll Element Into View         ${Today'sDeal}
    Wait Until Element Is Visible    ${Today'sDeal}

Selecting Third Product From Today'sDeal
    Wait For Element And Click       ${DealOfDay}

Verifying Buds Prize
    Wait Until Element Is Visible    ${Product1}
    ${Productprize}    Get Text      ${ProductPrize}
       
    Wait For Element And Click       ${Product1}
    ${prize}    Get Text             ${Prize}
    
    Should Be Equal    ${prize}    ${Productprize}
    Wait For Element And Click       ${Details}

Checking Table Content By Doing Ittiration
    ${Rowcount}=       Get Element Count        ${RowCount}
    ${Coloumcount}=    Get Element Count        ${ColoumCount}
    
    FOR    ${RowIndex}    IN RANGE    1    ${Rowcount} + 1
         ${RowContent}=    Get Text    xpath://*[@id='productDetails_techSpec_section_1']//tr[${RowIndex}]//th
        Run Keyword If    "${RowContent}" == "${ExpectedTitle}"   Exit For Loop      
    END
    Log To Console    ${RowIndex}\n
    Log To Console    ${RowContent}\n
    FOR    ${ColoumIndex}    IN RANGE    1    ${ColoumCount} + 1 
         ${CurrentData}=    Get Text    xpath://*[@id='productDetails_techSpec_section_1']//tr[${RowIndex}]//td[${ColoumIndex}]
        
        IF    "${CurrentData}" == "${ExpectedData}" 
         Log To Console    ${CurrentData} 
        END       
        Run Keyword If    "${CurrentData}" == "${ExpectedData}"    Exit For Loop
        
    END



    