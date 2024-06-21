*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${width}  1920
${height}  1080
${timeout}  30

*** Keywords ***
Go to Shopee 
    Open Browser    url=https://shopee.co.th/    browser=headlesschrome    #headlesschrome
    Set Window Size  ${width}  ${height}

*** Test Cases ***
Verify home page frit time 
    Go to Shopee 
    Wait Until Element Is Visible  //*[@class="language-selection"]  ${timeout}
    [Teardown]  Close Browser

Verify home page thai
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"English")]
    Wait Until Element Is Visible  //*[@lang="en"]  ${timeout}
    [Teardown]  Close Browser

Verify home page eng
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    [Teardown]  Close Browser
    
Verify the change language to English
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Click able to tab navigate to change language  #TODO
    [Teardown]  Close Browser

Verify search suggest
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Input into searchbar   #TODO
    Verify search suggest  #TODO
    [Teardown]  Close Browser

Verify input search
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Input into searchbar   #TODO
    [Teardown]  Close Browser

Verify enter search 
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Input into searchbar   #TODO
    Enter  #TODO
    [Teardown]  Close Browser

Verify search page results' shop
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Input into searchbar   #TODO
    Enter  #TODO
    Verify search page's shop  #TODO
    [Teardown]  Close Browser

Verify search page result's item
    Go to Shopee 
    Click Element  //*[@class="language-selection"]//*[contains(text(),"ไทย")]
    Wait Until Element Is Visible  //*[@lang="th"]  ${timeout}
    Input into searchbar   #TODO
    Enter  #TODO
    Verify search page's item  #TODO
    [Teardown]  Close Browser