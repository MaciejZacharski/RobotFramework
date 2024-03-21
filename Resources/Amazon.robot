*** Settings ***
Library    SeleniumLibrary
Resource  ..\\Resources\\PageObject\\LandingPage.robot
Resource  ..\\Resources\\PageObject\\TopNav.robot
Resource  ..\\Resources\\PageObject\\ResultsPage.robot
Resource  ..\\Resources\\PageObject\\ProductPage.robot
Resource  ..\\Resources\\PageObject\\CartPage.robot
Resource  ..\\Resources\\PageObject\\SignInPage.robot


*** Keywords ***
Search for products
    LandingPage.Load Amazon Page
    LandingPage.Verify Page Loaded
    TopNav.Type in search field
    TopNav.Click search button
Select Product from Search Results
    ResultsPage.Verify Results Page Loaded
    ResultsPage.Click on Product
    ProductPage.Verify Product Page Loaded
Add item to cart
    ProductPage.Click on Add to Cart button
    CartPage.Verify Cart Page Loaded
Begin Checkout
    CartPage.Click on Proceed to checkout button
    SignInPage.Verify Sign In Page Loaded