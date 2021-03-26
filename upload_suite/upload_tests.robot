*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_Upload
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Choose File    //*[@id='file_upload']    D:\\B-Mine\\Company\\Company\\Ericsson\\AssignmentSelenium_2.docx
    Wait Until Page Contains    uploaded Successfully    50s
    Page Should Contain    uploaded Successfully    
    

TC2_Var
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}    
    Log To Console    ${OUTPUT_DIR} 
    Log To Console    ${TEMPDIR} 
    Log To Console    ${TEST_NAME}    
    Log To Console    ${SUITE_NAME}   
    Log To Console    D:${/}B-Mine${/}Company${/}Company${/}Ericsson${/}AssignmentSelenium_2.docx     
             
TC2_Upload
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Log To Console    ${EXECDIR}${/}AssignmentSelenium_1.docx    
    Choose File    //*[@id='file_upload']    ${EXECDIR}${/}files${/}AssignmentSelenium_1.docx
    Wait Until Page Contains    uploaded Successfully    50s
    Page Should Contain    uploaded Successfully    
    


