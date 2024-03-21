*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Verify Cart Page Loaded
    Wait Until Page Contains                Added to Cart
Click on Proceed to checkout button
    Click Element                           name=proceedToRetailCheckout