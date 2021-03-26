*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Variables ***
${BROWSER}    chrome    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s