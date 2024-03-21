*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Verify Product Page Loaded
    Wait Until Page Contains                Back to results
Click on Add to Cart button
    Click Button                            id=add-to-cart-button