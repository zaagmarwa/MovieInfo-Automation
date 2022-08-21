*** Settings ***
Library     AppiumLibrary
Resource    ../variables.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Search Movie by name
    Open Movie application 
    Click on Search
    Wait Until Element Is Visible   ${search_field_path}
    # Search criteria match with list of Movies
    Input Text  ${search_field_path}    Batman returns
    Sleep   3
    Page Should Contain Element     ${cell_path}
    Reset Search field
    # Search criteria not match with list of Movies
    Input Text  ${search_field_path}    I can't find my movie
    Sleep   3
    Page Should Not Contain Element     ${cell_path} 

