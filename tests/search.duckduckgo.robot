*** Settings ***
Library          Selenium2Library
Suite Setup          Open Browser       ${HOMEPAGE}       ${BROWSER}
Test Setup           Go To        ${HOMEPAGE}
Suite Teardown          Close All Browsers
Documentation           Demostrate Selenium2Library by googling.

*** Variables ***
${HOMEPAGE}       https://duckduckgo.com/

*** Test Cases ***
Search IBM Guadalajara and find a reference for this site
    [Tags]      ibm      guadalajara     smoke
    Google and check results     ibm guadalajara      www.ibm.com/mx-es

Search Robot Framework and find a reference for this site
    [Tags]      robot framework      smoke
    Google and check results     robot framework      robotframework.org

Search DevOps Days in Guadalajara and find a reference for this site
    [Tags]      robot framework      smoke
    Google and check results     devopsdays guadalajara      devopsdays events

*** Keywords ***
Search and check results
    [Arguments]    ${searchkey}     ${result}
    Input Text     id=search_form_input_homepage    ${searchkey}
    Click Button    id=search_button_homepage
    Wait Until Page Contains    ${result}