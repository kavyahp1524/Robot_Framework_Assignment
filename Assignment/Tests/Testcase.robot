*** Settings ***
Documentation      Amazon
Resource           ../Keywords/ImportFiles.robot

Suite Setup        Launching Url And Browser
Suite Teardown     Close Browser

*** Test Cases ***

# ------------------ To run all tests -----------------
# robot -d AssignReport Assignment/Tests/Testcase.robot

#------------------- To run particular tests using tags ----------
# robot -d AssignReport -i Searching Assignment/Tests/Testcase.robot


#TC1 : 
Verifying If User Able To Navigate Prticular Product
    [Tags]    Searching 
    Given Scroll Down Upto Today'sDeal
    When Selecting Third Product From Today'sDeal
    And Verifying Buds Prize
    Then Checking Table Content By Doing Ittiration