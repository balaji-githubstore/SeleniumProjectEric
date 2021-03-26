*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary 
Library    String        

*** Test Cases ***
TC1_Table
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html  browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    
    ${count}    Get Element Count    //table[@id='example']/tbody/tr
    
    # FOR    ${i}    IN RANGE    1    ${count}
          # # Log To Console    //table[@id='example']/tbody/tr[${i}]/td[2]    
          # ${text}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[4]
          # Log To Console    ${text}  
          # Run Keyword If    '${text}'=='Brenden Wagner'    Click Element    //table[@id='example']/tbody/tr[${i}]/td[1]        
    # END
    ${total}    Set Variable    0
     FOR    ${i}    IN RANGE    1    ${count}+1
          # Log To Console    //table[@id='example']/tbody/tr[${i}]/td[2]    
          ${text}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[6]
          ${text}     Remove String    ${text}    $    
          ${text}     Remove String    ${text}    ,
          Log To Console    ${text} 
          # ${text}    Convert To Integer    ${text}    
          ${total}    Evaluate     ${total}+${text}     
    END
    Log To Console    ${total}  
    
    Should Be Equal    3008160    ${total}   
    Should Be Equal As Integers    3008160    ${total}       

TC1_Table1
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html  browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Table Should Contain    //table[@id='example']    Bradley Greer    
    Table Column Should Contain    //table[@id='example']    2    Bradley Greer
    Table Row Should Contain    //table[@id='example']     1    Name        
    Table Cell Should Contain    //table[@id='example']     2    3    Accountant    





