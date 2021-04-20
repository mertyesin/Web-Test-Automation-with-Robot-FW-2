*** Settings ***
Library  SeleniumLibrary
Library  Screenshot

*** Variables ***
${firstProductHeart}  xpath://*[@id="app-root"]/div/div[1]/div[7]/div/div/main/div/div[2]/div[1]/a/div/div[2]/div[2]

*** Keywords ***
Add first item to Wishlist
    Click Element  ${firstProductHeart}
