*** Settings ***
Library  SeleniumLibrary
Suite Setup     log     Inside test suite Setup
Suite Teardown      log     Inside test suite Teardown
Test Setup      log  Inside test Setup
Test Teardown   log  Inside test teardown
*** Variables ***
${google_search}    https://www.google.com/
${search_query}     flipkart
${search_product}   Iphone
${email}    likhithagowda@gmail.com

*** Test Cases ***
Google Search Test
  [Documentation]   This  test is to open google
  [Tags]  google
  Open Browser   ${google_search}  chrome
  Maximize Browser Window
  Search Data
  Submit form
  Click Element  class:LC20lb

Flipkart Search Test
   [Documentation]  this test  is to open  flipkart app
   [Tags]   shopping App
   sleep  3s
   Click Button  class:_2KpZ6l
   Search Flip Data
   sleep  3s
   Click Button  class:L0Z3Pu


Purchase Items Test
  sleep  3s
    click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  1s
    Switch Window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep  2s
    click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  2s
    email address
    sleep  2s
    click Button  class:_2KpZ6l
    sleep  3s




*** Keywords ***
* Keywords *
Search data
    Input Text  name:q  ${search_query}
Search flip data
    Input Text  name:q  ${search_product}
email address
    Input Text  class:_17N0em   ${email}

