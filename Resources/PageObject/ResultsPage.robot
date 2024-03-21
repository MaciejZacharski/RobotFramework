*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Verify Results Page Loaded
     Wait Until Page Contains                Results
Click on Product
     Click Element                           xpath=//span[contains(text(),'Ferrari 458 Italia')]