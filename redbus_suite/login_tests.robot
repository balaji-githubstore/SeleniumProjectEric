*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Variables ***
${BROWSER}    chrome    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.redbus.in/   browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//i[@id='i-icon-profile']
    Click Element    xpath=//li[@id='signInLink']
    
    # Select Frame    //iframe[@class='modalIframe']
    Select Frame    //iframe[contains(@src,'login')]
    Input Text    id=mobileNoInp    990258362
    Unselect Frame