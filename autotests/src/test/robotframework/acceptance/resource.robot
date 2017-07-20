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
${DELAY}          5
${HOMEPAGE}      https://soiduplaan.tallinn.ee/
${SiteUrl}       https://transport.tallinn.ee/index.html
*** Keywords ***
Open browser to newer page
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Go to Favorites
    Click element  id=menuFavourites
    Element should contain  id=favourites  Viru keskus - Laagri
    Element should contain  id=favourites  Viru keskus - Viimsi keskus
Add favorites
    Click Button  //*[@id="tblRoutes"]/tbody/tr[1]/td[4]/button
    Click Button  //*[@id="tblRoutes"]/tbody/tr[19]/td[4]/button
    Sleep  1s
Check for certain bus time
    Click Element      xpath=//a[@href="#bus/18/a-b/21211-1/22"]
    Element should contain   xpath=//a[@href="#bus/18/a-b/21211-1/22"]  9:17  Viru keskus 1
    Sleep  2s

Find out location
    Click button  Näita kaarti
My Bus
    Click element  xpath=//a[@href="#bus/18/a-b"]
    Element should contain  id=spanDir1  18Viru keskus - Laagri
Check page
     Title Should be  Sõiduplaanid
      Element should contain  id=divContentRoutesResults  Viru keskus - Viimsi keskus
      Element should contain  id=divContentRoutesResults  Mõigu - Reisisadam (A-terminal)
      Element should contain  id=divContentRoutesResults  Veerenni - Randla
Click on a new version
    Click link  xpath=//a[@href="http://transport.tallinn.ee/index.html"]
    Sleep   2s

Open Browser To Home Page
     Open Browser    ${HOMEPAGE}    ${BROWSER}
     Maximize Browser Window
     Set Selenium Speed    ${DELAY}






