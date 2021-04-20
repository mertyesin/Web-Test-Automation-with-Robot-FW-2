*** Settings ***
Library  SeleniumLibrary
Library  Screenshot

*** Variables ***
${ProductCounter}  //*[@id="wwOneHeader"]/div/div[1]/header/div[8]/div[3]/div/span[1]/span
${RemoveProduct}  xpath://*[@id="wishlistRoot"]/div/div[4]/div/ul/li/button
${counter_locator}  //*[@id="wwOneHeader"]/div/div[1]/header/div[8]/div[3]/div/span[1]/span

*** Keywords ***
Get wishlist product count
    ${productCount}  Get text  ${ProductCounter}
    [return]  ${productCount}

Remove product from wishlist
    Click Element  ${RemoveProduct}

Wishlist counter does not exists
    [return]  Element should not be visible    ${counter_locator}