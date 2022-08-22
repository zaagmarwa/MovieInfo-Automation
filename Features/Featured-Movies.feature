Feature: Featured Movies
  As a user of MovieInfo, I want to see the list of movies based on selected filters (Popular,Top Rated ...)
  
  Scenario: Open MovieInfo App
    When the user open the application
    Then The Featured tab is selected
    And the Now Playing filter is applied
    And Now Playing list of movies is shown
    And Each movie card should contain title, date and rating

  Scenario: Popular filter
    Given the application is running in the foreground
    And The Featured tab is selected
    When the user click on the Popular filter
    Then the Popular filter is applied
    And Popular list of movies is shown
    And Each movie card should contain title, date and rating

  Scenario: Upcoming filter
    Given the application is running in the foreground
    And The Featured tab is selected
    When the user click on the Upcoming filter
    Then the Upcoming filter is applied
    And Upcoming list of movies is shown
    And Each movie card should contain title, date and rating

  Scenario: Top Rated filter
    Given the application is running in the foreground
    And The Featured tab is selected
    When the user click on the Top Rated filter
    Then the Top Rated filter is applied
    And Top Rated list of movies is shown
    And Each movie card should contain title, date and rating 