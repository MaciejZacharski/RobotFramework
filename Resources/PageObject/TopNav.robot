*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Type in search field
    Input Text                              id=twotabsearchtextbox      Ferrari 458
Click search button
    Click Button                            id=nav-search-submit-button