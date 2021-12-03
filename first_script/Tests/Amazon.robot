*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common/Common.robot
#Library    SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d Practice/first_script_final/Results Practice/first_script_final/Tests/Amazon.robot


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains    Mobiles
    Input Text    id=twotabsearchtextbox    iPhone 11
    Click Button    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[3]/div/span/input
    Wait Until Page Contains    results for "iPhone 11"
    Click Link    xpath=/html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[5]/div/span/div/div/div[2]/div[2]/div/div/div[1]/h2/a
    Wait Until Page Contains    iPhone
#    Click Button    id=add-to-cart-button
#    Wait Until Page Contains    Added to Cart
#    Click Link    id=hlb-ptc-btn-native
#    Page Should Contain Element    continue
    Close Browser

*** Keywords ***
