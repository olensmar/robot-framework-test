*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}    firefox
${HEADLESS}    true

*** Test Cases ***
Create Quote for Car
    Open Testkube Website
    End Test

*** Keywords ***
Open Insurance Application
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    locale=en-GB
    New Page    https://testkube.io/

End Test
    Close Context
    Close Browser
