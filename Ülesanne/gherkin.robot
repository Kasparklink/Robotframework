*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
Looking for the bus time
    [Tags]    BUS-1 BUS-2
    Given browser is opened to Home Page
    When user types in "soiduplaanid" and clicks on "search"
    Then User clicks on a link and diffrent busses show up
    Then User chooses the newer version
    When The User is in the new version he and clicks on a bus number "18" that he want's to ride
    Then The user can click on the map to see he's/her location from the bus stop


*** Keywords ***
Browser is opened to Home Page
    Open Browser To Home Page

user types in "soiduplaanid" and clicks on "search"
    Google and check results    soiduplaanid    https://soiduplaan.tallinn.ee/

User clicks on a link and diffrent busses show up
    Click on a link
User chooses the newer version
    Click on a new version
The User is in the new version he and clicks on a bus number "18" that he want's to ride
    My Bus
The user can click on the map to see he's/her location from the bus stop
    Find out location