*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_Alert
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    Sleep    2s
    Click Element    name=B3  
    Sleep    2s    
    # ${text}    Handle Alert    LEAVE    
    # Log To Console    ${text}    
    
    # Handle Alert
    ${text}    Handle Alert    LEAVE    
    Log To Console    ${text}
    # Alert Should Be Present    Confirm1 boxes offer the user a choice of clicking OK or Cancel
    Input Text Into Alert    test123      LEAVE  