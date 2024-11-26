*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://demoqa.com/automation-practice-form

*** Test Cases ***
Testing Radio BUttons and Check Boces
    Open Browser    ${URL}  ${BROWSER}
    maximize Browser window
    set selenium speed  5s
    #Wait for and close any popups (e.g., ads) if necessary
    Close Popup

    #selection radiobutton
    Wait Until Element Is Visible    xpath://label[@id='gender-radio-1']
    click Element   xpath://label[@id='gender-radio-1']
    #Selection of checbox
    wait Until Element Is Visible    id:hobbies-checkbox-1
    Select checkbox  id:hobbies-checkbox-1
    Select checkbox     id:hobbies-checkbox-2
    # Unselecting a Checkbox
    Unselect Checkbox    id:hobbies-checkbox-1

    Sleep    5s
    Close Browser

    unselect checkbox   Sports
    Selecting a Radio Button
    

    #Scroll Element Into View    xpath://label[@for='gender-radio-1']
    #Wait Until Element Is Clickable    xpath://label[@for='gender-radio-1']
    #Click Element               xpath://label[@for='gender-radio-1']

    # Selecting Checkboxes
    #Scroll Element Into View    id:hobbies-checkbox-1
    #Select Checkbox             id:hobbies-checkbox-1
    #Select Checkbox             id:hobbies-checkbox-2

    # Unselecting a Checkbox
    #Scroll Element Into View    id:hobbies-checkbox-1
    #Unselect Checkbox           id:hobbies-checkbox-1

    #Sleep    5s
    #Close Browser
    #*** Keywords ***
    #Set Browser Options
    # Disable SSL verification for Chrome
    #Create WebDriver    Chrome    options=${options}
    #${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #${options}.add_argument('--ignore-certificate-errors')
    #${options}.add_argument('--disable-web-security')
