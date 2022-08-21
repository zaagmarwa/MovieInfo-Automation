*** Settings ***
Library           AppiumLibrary
Resource          ../PageObject/Locators.robot

*** Keywords ***
Open Movie application 
    Open Application    ${REMOTE_URL}    automationName=${AUTOMATION_NAME}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_LOCATION} 

Switch to Popular tab
    Click Element   ${popular_path}

Switch to Upcoming tab
    Click Element   ${upComing_path}

Switch to Top Rated tab
    Click Element   ${topRated_path}

Check tab content
    ${elements}=    GetWebElements    xpath=//XCUIElementTypeCell
    FOR    ${element}    IN    @{elements}
        ${index}=     Get Element Attribute    ${element}  index
        # index 0 and index 1 interpreted index=false , index=true so we need to replace them 
        ${formatted_index}=    set variable    ${index.replace('false', '0').replace('true', '1')}  
            ${fields}=  GetWebElements     xpath=//XCUIElementTypeCell[@index=${formatted_index}]/XCUIElementTypeStaticText
            ${count}=    Get length    ${fields}
            Should Be True	${count} >= 3  # Expect minimum 3 fields to exist (Date, Rating, Title)
    END