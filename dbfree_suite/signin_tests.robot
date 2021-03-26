*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.db4free.net/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s

    ${title}    Get Title  
    Log To Console    ${title}      

    Click Element     xpath=//b[contains(text(),'phpMyAdmin')]
    Switch Window     phpMyAdmin
    Input Text     id=input_username     db123
    Input Password     id=input_password     test123
    Click Element     id=input_go
    Element Should Contain     xpath=(//div[@role='alert'])[2]     Cannot log in to the MySQL server
    Close Window
    
    Switch Window    db4free.net - MySQL Database for free
    ${title}    Get Title  
    Log To Console    ${title}   
    


