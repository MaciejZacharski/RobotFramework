*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Load Amazon Page
    Go to    ${Start_URL}
Verify Page Loaded
    Wait Until Page Contains               Today's Deals
