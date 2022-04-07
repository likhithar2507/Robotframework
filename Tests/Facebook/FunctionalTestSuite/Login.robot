*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Login Screen Test
    [Documentation]  this is a login screen for users
    [Tags]  users
    Log  Hello

Registration Screen Test
   [Documentation]  This is the registration screen for users
   [Tags]  users
   Log  Sucess

Admin Login Test
   [Documentation]  this page is for admins
   [Tags]  Admin
   Log  Admin
*** Keywords ***


