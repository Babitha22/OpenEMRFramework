*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials
Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Invalid Credentials Test
    Input Text    id=authUser    john
    Input Password    id=clearPass    john123
    Select From List By Label    name=languageChoice    Dutch
    Click Element    xpath=//button[@type='submit']
    Element Should Contain    //div[contains(text(),'Invalid')]    Invalid username or password
