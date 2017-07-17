*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           BuiltIn
Library           Selenium2Library


*** Variables ***
${BROWSER}        chrome
${DELAY}          0.5
${HOMEPAGE}      https://soiduplaan.tallinn.ee/

*** Keywords ***
Find out location
    Click button  Näita kaarti
My Bus
    Click element  xpath=//a[@href="#bus/18/a-b"]
Click on a new version
    Click link  xpath=//a[@href="http://transport.tallinn.ee/index.html"]


Open Browser To Home Page
     Open Browser    ${HOMEPAGE}    ${BROWSER}
     Maximize Browser Window
     Set Selenium Speed    ${DELAY}






