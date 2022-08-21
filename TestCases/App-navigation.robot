*** Settings ***
Library     AppiumLibrary
Resource    ../variables.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***
Navigate between tabs
    Open Movie application 
    Check tab content
    Switch to Popular tab
    Check tab content
    Switch to Upcoming tab
    Check tab content
    Switch to Top Rated tab
