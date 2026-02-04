*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    https://www.google.com
${BROWSER}     headlesschrome

*** Test Cases ***
Go To homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Close Browser
