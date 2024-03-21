*** Settings ***
Library  SeleniumLibrary




*** Keywords ***
Type in search field
    Input Text                              id=twotabsearchtextbox      ${Search_Term}
Click search button
    Click Button                            id=nav-search-submit-button