*** Settings ***
Library           Selenium2Library
Resource          resource.robot
Library           DateTime

Library   Selenium2library
Resource   resource.robot

*** Test Cases ***
Looking for the bus time
    [Tags]    BUS-1 BUS-2
    Given browser is opened to Home Page
    When User clicks on the button "newer version"
    Then The User is on the newer version and he clicks on a bus number "18" that he want's to ride
    Then User checks if any bus goes at "09:17"
    Then User goes back to Home Page and adds busses to favorites
    Then User goes to favorites page



*** Keywords ***

Browser is opened to Home Page
    Open Browser To Home Page
User clicks on the button "newer version"
    Click on a new version
The User is on the newer version and he clicks on a bus number "18" that he want's to ride
    My Bus
User checks if any bus goes at "09:17"
    Check for certain bus time
User goes back to Home Page and adds busses to favorites
    Back to Homepage
User goes to favorites page
    Go to Favorites


