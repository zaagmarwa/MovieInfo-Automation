Feature: Search Movies
  As a user of MovieInfo, I want to search a movie by name
  
  Scenario: Open search moviee page
    Given the application is running in the foreground
    When the user clicks on the search tab
    Then The search page is opened

  Scenario: search movie
    Given the application is running in the foreground
    And search page is open
    When the user types on the search input
    Then search result updates in realtime with list of movies matching the search criteria

  Scenario: Reset search
    Given the application is running in the foreground
    And search page is open
    And there is some text in the search input
    When the user clicks on the search cross button
    Then the search criteria is cleared