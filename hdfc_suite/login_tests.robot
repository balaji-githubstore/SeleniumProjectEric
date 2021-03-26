*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    
    Select Frame    name=login_page
    Input Text    xpath=//input[@name='fldLoginUserId']   test123   
    Click Element    xpath=//img[@alt='continue']    
    Unselect Frame
       
