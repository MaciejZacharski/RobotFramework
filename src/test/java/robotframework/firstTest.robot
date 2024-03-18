*** Settings ***
Documentation   This is some basic info about whole suite
Library         SeleniumLibrary

# run the script: robot src/test/java/robotframework/firstTest.robot
# run all the scripts robot -d Results src/test

*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is basic info about test
    [Tags]              1006    Smoke   Contacts

    #Initialize Selenium
    Set Selenium Timeout    5s

    #open the browser
    Log                 Starting the Test Case
    Open Browser        https://automationplayground.com/crm/   firefox
    Wait Until Page Contains    Customers Are Priority One!
    Click Link          Sign In
    Wait Until Page Contains     Login
    Input Text          Id=email-id     maciej.zach@gmail.com
    Input Text          Id=password     123
    Click Button        Id=submit-id
    Wait Until Page Contains    Our Happy Customers
    Click Element       Id=new-customer
    Input Text          Id=EmailAddress     maciej.zach@gmail.com
    Input Text          Id=FirstName        Maciej
    Input Text          Id=LastName         Zacharski
    Input Text          Id=City             Warszawa
    Select From List By Value    Id=StateOrRegion   CO
    Select Radio Button          gender             male
    Select Checkbox              name=promos-name
    Click Button        Submit
    Wait Until Page Contains     Success!




    Sleep               3s
    Close Browser

