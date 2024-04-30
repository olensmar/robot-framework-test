*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}    chromium
${HEADLESS}    true

*** Test Cases ***
Test Testkube Website
    Open Testkube Website
    End Test

*** Keywords ***
Open Testkube Website
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    locale=en-GB
    New Page    https://testkube.io/

End Test
    Close Context
    Close Browser
