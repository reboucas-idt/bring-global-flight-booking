*** Settings ***
Documentation  Support library with basic commands used to initialize the automated tests


Library        SeleniumLibrary
Library        BuiltIn


*** Keywords ***

Open Web browser
    [Arguments]  ${URL}   ${browser}
    Open browser  ${URL}  ${browser}
    Maximize Browser Window

Close browser opened
    Close Browser
