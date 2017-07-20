*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
Opening a page for busses time
    Given browser is opened to Home Page
    When User clicks on the button "newer version"
    Then User checks if he's in the right page
Checking for a specific bus time
    Given browser in the newer version
    When User is in the newer version he clicks on a bus number "18" that he want's to ride
    Then User checks if any bus goes at "9:00"
Adding certain busses to favorites
    Given browser in the newer version
    When User clicks on the favorite button to add his busses to favorites
    Then User goes to favorites and checks if they're there


*** Keywords ***
#Test Page
Browser is opened to Home Page
    Open Browser To Home Page
User clicks on the button "newer version"
    Click on a new version
User checks if he's in the right page
    Check page
#Test Bus time
Browser in the newer version
    open browser to newer page
User is in the newer version he clicks on a bus number "18" that he want's to ride
    My Bus
User checks if any bus goes at "9:00"
    Check for bus times
#Test favorites
User clicks on the favorite button to add his busses to favorites
    add favorites
User goes to favorites and checks if they're there
    Go to Favorites


