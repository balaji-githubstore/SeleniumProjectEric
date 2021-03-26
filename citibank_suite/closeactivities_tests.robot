*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.online.citibank.co.in/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    Click Element    link=APPLY FOR CREDIT CARDS    
    Sleep    5s    
    Close Browser