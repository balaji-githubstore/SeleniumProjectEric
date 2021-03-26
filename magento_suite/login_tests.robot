*** Settings ***
Library    DateTime  
Library    SeleniumLibrary   
Library    OperatingSystem          

*** Test Cases ***
TC1_ValidCredential 
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    https://magento.com/    browser=chrome
    Maximize Browser Window
    Click Element    link=My Account
    Input Text    id=email    balaji0017@gmail.com   
    Input Password    id=pass    balaji@12345
    Click Element    name=send   
    #make sure you are on proper page        
    Title Should Be    My Account
    Click Element    partial link:Out    
      