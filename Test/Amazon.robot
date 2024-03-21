*** Settings ***
Documentation   This is some basic info about the whole suite
Resource   ..\\Resources\\Amazon.robot
Resource   ..\\Resources\\Common.robot


Test Setup   Begin web test
Test Teardown  End web test

#run script  robot -d Results test/Amazon.robot
*** Variables ***
${BROWSER}    chrome
${Start_URL}    https://www.amazon.com
${Search_Term}    Ferrari 458

*** Test Cases ***
User can search for Products
    [Documentation]  Search for Products
    [Tags]  Smoke

    Amazon.Search for products

User must sign in to check out
    [Documentation]  Checkout Sign in verification
    [Tags]  Smoke

    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add item to cart
    Amazon.Begin Checkout







