*** Settings ***
Library    AutoItLibrary  
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_WindowsAuthSettingURL
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=http://john:john123@profit.novactech.in/PROFIT/Home/Home.aspx    browser=chrome
    Maximize Browser Window    
    

TC2_AutoIT
    # Sleep    2s 
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=http://profit.novactech.in/PROFIT/Home/Home.aspx    browser=chrome
    Maximize Browser Window
    Sleep    2s
    Send    John
    Sleep    2s    
    Send    {TAB}
    Sleep    2s
    Send    John123
    Sleep    2s 
    Send    {ENTER}   
     