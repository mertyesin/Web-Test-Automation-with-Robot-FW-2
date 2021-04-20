*** Settings ***
Library  SeleniumLibrary
Library  Screenshot

Resource  ../PageObjects/MobelPage.robot
Resource  ../PageObjects/WishlistPage.robot

*** Variables ***
${mobelPage}  //*[@id="wwOneHeader"]/div/div[2]/nav/ul/li[4]/a/span[2]
${SearchBox}  //*[@id="wwOneHeader"]/div/div[1]/header/div[6]/div[1]/form/input
${WishlistIcon}  //*[@id="wwOneHeader"]/div/div[1]/header/div[8]/div[3]/div/span[2]

*** Keywords ***
Add first item to Wishlist from Mobel List
    Go to mobel page  ${mobelpage}
    sleep  5
    Add first item to Wishlist

Go to Mobel Page
    [Arguments]  ${mobelpage}
    sleep  3
    Click Element  ${mobelpage}
    Click Element  ${SearchBox}
    Maximize Browser Window

Go to Wishlist Page and get product count
    Click Element  ${WishlistIcon}
    sleep  3
    ${productCount}  Get wishlist product count
    [return]  ${productCount}