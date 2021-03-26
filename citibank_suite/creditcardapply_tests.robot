*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.online.citibank.co.in/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    
    Click Element    xpath=//span[text()='Login'] 
    Switch Window    Citibank India
    Input Text    id=User_Id    vikkkk        

    # Click Element    link=APPLY FOR CREDIT CARDS 
    # Switch Window    Online Credit Card Application Form | Citi India
    # Click Element    link=Travel    
    # Close Window
    
    