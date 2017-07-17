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
Check for certain bus time
    Click Element      xpath=//a[@href="#bus/18/a-b/21211-1/22"]
    Element should contain   xpath=//a[@href="#bus/18/a-b/21211-1/22"]  9:17  Viru keskus 1

Find out location
    Click button  Näita kaarti
My Bus
    Click element  xpath=//a[@href="#bus/18/a-b"]
    Element should contain  id=spanDir1  18Viru keskus - Laagri
Click on a new version
    Click link  xpath=//a[@href="http://transport.tallinn.ee/index.html"]
    Title Should be  Sõiduplaanid

Open Browser To Home Page
     Open Browser    ${HOMEPAGE}    ${BROWSER}
     Maximize Browser Window
     Set Selenium Speed    ${DELAY}






