*** Settings ***
Library  SeleniumLibrary
Library  Screenshot
Documentation     Westwing website wishlist test

Resource  ../PageObjects/LoginPane.robot
Resource  ../PageObjects/PageObject.robot
Resource  ../CommonKeywords.robot

Test Setup  CommonKeywords.Start Test Case  # Open browser
Test Teardown  CommonKeywords.Finish Test Case  # Close browser

*** Variables ***
${user}  mertyesin89@gmail.com
${password}  14101969944

*** Test Cases ***
Add and remove items from Wishlist
    [Documentation]  TBD
    Enter credentials to login pane  ${user}  ${password}

    Add first item to Wishlist from Mobel List
    ${actual_count}  Go to Wishlist Page and get product count
    should be true  1  ${actual_count}  # Test actual and expected ones

    Remove product from wishlist
    Wishlist counter does not exists

