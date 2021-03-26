*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${BROWSER}    chrome
@{COLORS}    red    blue    green     yellow
&{dc}    username=bala    password=bala123

*** Test Cases ***
TC1
    Log To Console    ${BROWSER} 
    Log To Console    ${COLORS}[0]  
    
    FOR    ${color}    IN    @{COLORS}
        Log To Console    ${color}    
    END     
    
    Log To Console    ${dc}[username]    
    
    ${text}    Set Variable    baa
    
    @{colors}     Create List    red    green     yellow
    Log To Console    ${colors}[0]
        
    &{dic}    Create Dictionary       username=bala    password=bala123
    Log To Console    ${dic}[username] 