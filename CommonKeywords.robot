*** Settings ***
Library  SeleniumLibrary
Library  Screenshot
Documentation     Westwing website wishlist test


*** Variables ***
${url}  http://www.westwingnow.de
${browser}  chrome

*** Keywords ***
Start Test Case
    [Documentation]  Setup
    # Create and open browser accroding to url & browser type
    Open Browser  ${url}  ${browser}

Finish Test Case
    [Documentation]  Teardown
    Close Browser