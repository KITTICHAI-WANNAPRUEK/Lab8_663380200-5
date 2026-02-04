*** Settings ***
Library SeleniumLibrary

*** Variables ***
${HOMEPAGE} http://www.google.com
${BROWSER} Edge

*** Test Cases ***
Go To homepage
Open Browser ${HOMEPAGE} ${BROWSER}
