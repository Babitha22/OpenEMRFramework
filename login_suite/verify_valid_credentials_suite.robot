*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials
Library     SeleniumLibrary

*** Test Cases ***
Verify Valid Credentials Test
#    Log To Console    ${EXECDIR}\\drivers\\edgedriver.exe
    Open Browser      browser=edge        executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
      Set Selenium Implicit Wait    30s
     Go To    url=https://demo.openemr.io/b/openemr/index.php
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Close Browser