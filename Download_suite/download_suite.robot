*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_DefaultDownload    
        
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.selenium.dev/downloads/    browser=chrome  
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    Click Element    link=32 bit Windows IE
    Sleep    5s    
    ${username}    Get Environment Variable    USERNAME  
    Log To Console    ${username}      
    File Should Exist    C:\\Users\\${username}\\Downloads\\IEDriverServer_Win32_3.150.1.zip    
    
TC2_ChangeDownloadDir  
    ${prefs}  Create Dictionary    download.default_directory=${EXECDIR}${/}downloads
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://www.selenium.dev/downloads/    browser=chrome    options=add_experimental_option("prefs",${prefs})
    Maximize Browser Window   
    Set Selenium Implicit Wait    20s
    Click Element    link=32 bit Windows IE
    Sleep    5s    
    File Should Exist    ${EXECDIR}${/}downloads${/}IEDriverServer_Win32_3.150.1.zip
