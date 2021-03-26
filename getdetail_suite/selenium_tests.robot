*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    ${title}    Get Title
    Log    ${title}    
    Log To Console    ${title} 
    Should Be Equal    ${title}     OpenEMR Login       
    
    ${url}    Get Location
    Log To Console    ${url}    
    
    ${source}    Get Source
    
    ${linkcount}    Get Element Count    xpath=//a
    Log To Console    ${linkcount}    
    
    Input Text    xpath=//input[@id='authUser']    admin    
    
    ${value}    Get Value    xpath=//input[@id='authUser']
    Log To Console    ${value}     

    ${placeholder}    Get Element Attribute    xpath=//input[@id='authUser']    placeholder
    Log To Console    ${placeholder}     

    ${href}    Get Element Attribute    xpath=//a    href
    Log To Console    ${href}
    
    Click Element    //button    
    
    ${innertext}   Get Text    //div[contains(text(),'Invalid')]
    Log To Console    ${innertext}    
    Should Contain    ${innertext}    invalid         



