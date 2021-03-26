*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.royalcaribbean.com/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    # ${count}     Get Element Count    //*[@class='email-capture__close']
    # Run Keyword If    ${count}>0    Click Element    //*[@class='email-capture__close']     
    
    ${list}    Run Keyword And Ignore Error    Click Element    //*[@class='email-capture__close']    
    Log To Console    ${list}      
    
    Click Element    //*[text()='Sign In']  
    Click Element    //*[text()='Create an account'] 
    Input Text    //*[@data-placeholder='First name/Given name']    balaji  
        
    Click Element    //*[text()='Month']    
    Click Element    //*[contains(text(),'April')]    
    
    Click Element    //*[text()='Day']    
    Click Element    //span[contains(text(),'26')]
    


