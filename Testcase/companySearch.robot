*** Settings ***
Documentation  Create a simple test script to validate, the user is able to search product on ebay.com\n
...  [TC01] Launch Website and search a company\n
...  [TC02] Verify that application is able to fetch the search results
Library  Selenium2Library
*** Variables ***
${BaseUrl}  https://www.aihitdata.com/
${browserName}     Chrome
${companyDescription}     mortgage
${country}     USA
*** Test Cases ***
[TC01] Launch Website and search a company\n
     [Tags]  functional
     Lunch Website using chrome browser
     Search a company      ${country}

[TC02] Verify that Website is able to fetch the search results
     [Tags]  functional
     page should contain   results
     sleep   2
     close browser
*** Keywords ***
Lunch Website using chrome browser
    open browser    ${BaseUrl}    ${browserName}
    maximize browser window
    title should be    The Company Database | aiHit
    sleep  2
Search a company
   [Arguments]    ${Search}
   input text    xpath= //input[@placeholder="Country, City, Postcode, etc." ]    ${country}
   input text    xpath= //input[@placeholder="Company Description, Industry, etc." ]    ${companyDescription}
   click button  xpath=//button[@class="btn btn-info btn-block"]
   sleep   2