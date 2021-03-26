*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Variables ***
${BROWSER}    chrome    

*** Test Cases ***
TC1_GetWebElement
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.google.com/   browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    # Click Element    //a[text()='Gmail']   
    
    ${ele}    Get WebElement    //a[text()='Gmail']
    Log To Console    ${ele}    
    
    ${href}    Get Element Attribute     ${ele}    href
    Log To Console    ${href}    
    
    ${text}     Get Text    ${ele}
    Log To Console    ${text}    

    Click Element     ${ele}     
    
TC2_GetWebElementsHref
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.google.com/   browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    ${elements}    Get WebElements    //a
    Log To Console    ${elements}  
    
    ${count}     Get Element Count    //a
    Log To Console    ${count}    
    
    FOR    ${i}    IN RANGE    0    ${count}
          ${href}    Get Element Attribute    ${elements}[${i}]    href     
          Log To Console    ${href} 
    END
    
TC3_GetWebElementsText
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.google.com/   browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    ${elements}    Get WebElements    //a
    Log To Console    ${elements}  
    ${count}     Get Element Count    //a
    Log To Console    ${count}    
    
    FOR    ${i}    IN RANGE    0    ${count}
          ${text}     Get Text    ${elements}[${i}]
           Log To Console    ${text}  
           Run Keyword If    '${text}'=='Images'    Click Element    ${elements}[${i}] 
           Exit For Loop If    '${text}'=='Images'       
    END
    
TC4_GetWebElementsText
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.google.com/   browser=${BROWSER}
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    ${elements}    Get WebElements    //a

    FOR    ${element}    IN    @{elements}
        ${text}  Get Text    ${element}
        Log To Console    ${text}   
        Run Keyword If    '${text}'=='Images'    Click Element    ${element} 
        Exit For Loop If    '${text}'=='Images' 
    END
    
    
    
    


