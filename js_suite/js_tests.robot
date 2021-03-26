*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    



*** Test Cases ***
TC1_js
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.gotomeeting.com/en-in/try    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    # Execute Javascript    document.getElementById('first-name').value='balaji' 
      
    # Execute Javascript    document.getElementById('sign').click();
    
    ${ele}    Get WebElement    id=first-name
    Execute Javascript     arguments[0].value='balaji';     ARGUMENTS    ${ele}
    
    
    ${ele}    Get WebElement    //*[text()='Sign Up']
    Execute Javascript     arguments[0].click();     ARGUMENTS    ${ele}   
    

TC2_js
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    10s
    Input Text    css=#authUser       admin    
    # Input Password    css=input[id='clearPass']    pass    
    Execute Javascript    document.querySelector("[id='clearPass']").value='bala'    
    Select From List By Label    name=languageChoice    English (Indian)    
    Click Element    xpath=//button[@type='submit']   
    
    #make sure you are on proper page 
    Wait Until Page Contains Element    xpath=//span[@data-bind='text:fname']    timeout=30s
    Page Should Contain    Flow Board  
    
    # Click Element    xpath=//li[text()='Logout']  
    ${ele}    Get WebElement    xpath=//li[text()='Logout']
    Execute Javascript     arguments[0].click();     ARGUMENTS    ${ele}  
    

TC2_js2
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    10s
    Input Text    css=#authUser       admin    
    Input Password    css=input[id='clearPass']    pass   
        
    ${title}    Execute Javascript    return document.title 
    Log To Console    ${title}   
    
    ${user}    Execute Javascript    return document.querySelector("#authUser").value  
    Log To Console    ${user}   
    
    ${pass}    Execute Javascript    return document.querySelector("[id='clearPass']").value  
    Log To Console    ${pass}      
    
    ${ele}    Get WebElement    id=clearPass
    ${pass}    Execute Javascript     return arguments[0].value     ARGUMENTS    ${ele}  
    Log To Console    ${pass} 

    ${text}    Execute Javascript    return document.querySelectorAll("[class='video-stream html5-main-video']")[0].currentTime



