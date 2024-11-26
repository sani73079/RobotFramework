1. What is Robot Framework?
Robot Framework is an open-source automation framework for acceptance testing and robotic process automation (RPA).
It uses a keyword-driven approach, which makes it user-friendly for testers without programming skills.

Incorrect Variable Assignment:

${"Username"} should not be assigned using set variable for element locators.
Use direct locators (e.g., id:user-name) instead of storing them in variables unnecessarily.
Incorrect Locators:

The username field has the locator id:user-name, not id:Username.
Similarly, the password field has id:password.
Incorrect Login Button Locator:

The login button does not have the locator xpath://a[@class='submit-button btn_action']. Use the correct locator: xpath://input[@class='submit-button btn_action'].
Missing Browser Stay Logic:

The browser closes immediately after execution because there is no mechanism to keep it open (e.g., using Sleep or Pause Execution).
Click Element Missing Target:

The last click element line has no target specified, which will cause an error.
3. Robot Framework Basics
Structure of a Test File
Robot Framework uses a .robot file extension.

Sections in Robot Framework:

Settings: Import libraries and define metadata.
Variables: Define variables for reuse.
Test Cases: Define the actual test steps.
Keywords: Create reusable keywords


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.saucedemo.com

*** Test Cases ***
TestingInputBox
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Element Should Be Visible    id:user-name
    Element Should Be Enabled    id:user-name
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    xpath://input[@class='submit-button btn_action']
    Sleep    5s
    Close Browser
