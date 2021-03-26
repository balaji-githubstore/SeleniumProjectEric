*** Settings ***

Test Template    Print_Template

*** Test Cases ***
tc1    bala    bala123
tc2    bala    bala1235

*** Keywords ***
Print_Template
    [Arguments]    ${username}    ${password}
    Log To Console    ${username}    
    Log To Console    ${password} 
     