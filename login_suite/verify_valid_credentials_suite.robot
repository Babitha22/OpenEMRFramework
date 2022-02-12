*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials
Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Library     DataDriver      file=../test_data/OpenEMRData.xlsx      sheet_name=verifyvalidtemplatecredential

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template   Verify Valid Credentials Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credentials Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR