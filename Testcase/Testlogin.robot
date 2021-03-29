*** Settings ***
Documentation  A simple example to launching aihitdata url and login
Library  Selenium2Library
Library   OperatingSystem
*** Variables ***
${Variable1}        'Printing variable V1'
${Variable2}      'Printing variable V2'

*** Test Cases ***
Login aihitdata
    [Tags]    Smoke
    Open aihitdata by Chrome
    Log in aihitdata   username   password

printing variable on console
    [Tags]     Smoke
    log to console       ${Variable1}
    log to console       ${Variable2}
    log    ${Variable1}
    log    ${Variable2}

*** Keywords ***
Open aihitdata by Chrome
    Open Browser  https://www.aihitdata.com/login?next=https%3A//www.aihitdata.com/    chrome
    Maximize Browser Window
    Wait Until Page Contains    Log in

Log in aihitdata
     [Arguments]     ${email}     ${password}
     Input Text   email  ${email}
     Input Password  password    ${password}
     sleep      5
     close browser

