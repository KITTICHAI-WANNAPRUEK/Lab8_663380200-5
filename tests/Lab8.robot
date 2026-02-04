*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    https://www.google.com

*** Test Cases ***
Go To homepage
    Open Browser Headless
    Title Should Be    Google
    Close Browser

*** Keywords ***
Open Browser Headless
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080

    Create WebDriver    Chrome    options=${options}
