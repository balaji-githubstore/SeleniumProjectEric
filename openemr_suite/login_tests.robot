*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Input Text    xpath=//input[@id='authUser']    admin    
    Input Password    id=clearPass    pass    
    Select From List By Label    name=languageChoice    English (Indian)    
    Click Element    xpath=//button[@type='submit']   
    
    #make sure you are on proper page 
    Wait Until Page Contains Element    xpath=//span[@data-bind='text:fname']    timeout=30s
    Page Should Contain    Flow Board  
    Mouse Over    //span[@data-bind='text:fname']
    Click Element    xpath=//li[text()='Logout']  
    
    #make sure you are on proper page 
    Wait Until Page Contains Element    xpath=//input[@id='authUser']        timeout=30s
    Title Should Be    OpenEMR Login    
    

TC2_InvalidCredential
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    Element Should Contain    //p[contains(text(),'most')]    Electronic Health Record and Medical Practice    
    
    Input Text    xpath=//input[@id='authUser']    admin123   
    Input Password    id=clearPass    pass    
    Select From List By Label    name=languageChoice    English (Indian)    
    Click Element    xpath=//button[@type='submit']
    
    #check for exact text
    # Element Text Should Be    xpath=//div[contains(text(),'Invalid')]    Invalid username or password    
    
    #check for given text contains or not
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password   

    

    