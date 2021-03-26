*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.redbus.in/   browser=chrome    options=add_argument("--disable-notifications")
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
TC2_HeadLess
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.google.com/   browser=chrome    options=add_argument("--disable-notifications");add_argument("--Headless")
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Click Element    link=Gmail
    ${title}    Get Title  
    Log To Console    ${title}          