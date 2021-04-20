*** Settings ***
Library  SeleniumLibrary
Library  Screenshot

*** Variables ***
${usernameTextBox}  xpath://input[@type='email']
${passwordTextBox}  xpath://input[@type='password']
${cookieButton}     xpath://*[@id="onetrust-accept-btn-handler"]
${recieveMailBox}   //input[@type='checkbox']
${RegisterButton}   //button[@type='submit']

*** Keywords ***
Enter credentials to login pane
    [Arguments]  ${user}  ${password}
    sleep  5
    Accept Cookies  ${cookieButton}
    sleep  5

    Input text   ${usernameTextBox}  ${user}
    Input text   ${passwordTextBox}  ${password}
    Accept mail registration  ${recieveMailBox}
    Click element  ${RegisterButton}

Accept Cookies
    [Arguments]  ${cookieButton}
    Click element  ${cookieButton}

Accept mail registration
    [Arguments]   ${recieveMailBox}
    Click element  ${recieveMailBox}