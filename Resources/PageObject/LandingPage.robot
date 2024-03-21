*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Load Amazon Page
    Go to    https://www.amazon.com
Verify Page Loaded
    Wait Until Page Contains               Today's Deals
