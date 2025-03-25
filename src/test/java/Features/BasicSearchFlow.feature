@basictest @ready
Feature: Basic Search Flow

  Scenario: There should be a departure field on the search form

    Given the user is accessing the home page
    When the page load completely
    Then there sould be a field called "departing"

  Scenario: There should be a return field on the search form

    Given the user is accessing the home page
    When the page load completely
    Then there sould be a field called "returning"

  @justthat
  Scenario Outline: Flights leave every six months, in July and December, both ways.

    Given the user is accessing the home page
    And the page load completely
    And the user search for flights "<departure>" "<return>" "<promotionalCode>"
    Then the message must be "<message>"

    #TODO: Change the message according to documentation
    Examples:
      | departure | return | promotionalCode | message                                   |
      | 0         | 0      |                 | Seats available!                          |
      | 0         | 1      |                 | Seats available!                          |
      | 0         | 2      |                 | Seats available!                          |
      | 0         | 3      |                 | Seats available!                          |
      | 0         | 4      |                 | Seats available!                          |
      | 0         | 5      |                 | Sorry, there are no more seats available. |
      | 1         | 0      |                 | Sorry, there are no more seats available. |
      | 1         | 1      |                 | Seats available!                          |
      | 1         | 2      |                 | Seats available!                          |
      | 1         | 3      |                 | Seats available!                          |
      | 1         | 4      |                 | Seats available!                          |
      | 1         | 5      |                 | Sorry, there are no more seats available. |
      | 2         | 0      |                 | Sorry, there are no more seats available. |
      | 2         | 1      |                 | Sorry, there are no more seats available. |
      | 2         | 2      |                 | Seats available!                          |
      | 2         | 3      |                 | Seats available!                          |
      | 2         | 4      |                 | Seats available!                          |
      | 2         | 5      |                 | Sorry, there are no more seats available. |
      | 3         | 0      |                 | Sorry, there are no more seats available. |
      | 3         | 1      |                 | Sorry, there are no more seats available. |
      | 3         | 2      |                 | Sorry, there are no more seats available. |
      | 3         | 3      |                 | Seats available!                          |
      | 3         | 4      |                 | Seats available!                          |
      | 3         | 5      |                 | Sorry, there are no more seats available. |
      | 4         | 0      |                 | Sorry, there are no more seats available. |
      | 4         | 1      |                 | Sorry, there are no more seats available. |
      | 4         | 2      |                 | Sorry, there are no more seats available. |
      | 4         | 3      |                 | Sorry, there are no more seats available. |
      | 4         | 4      |                 | true                                      |
      | 4         | 5      |                 | Sorry, there are no more seats available. |
      | 5         | 0      |                 | Sorry, there are no more seats available. |
      | 5         | 1      |                 | Sorry, there are no more seats available. |
      | 5         | 2      |                 | Sorry, there are no more seats available. |
      | 5         | 3      |                 | Sorry, there are no more seats available. |
      | 5         | 4      |                 | Sorry, there are no more seats available. |


  Scenario: Trips for the next two years should be searchable.

    Given the user is accessing the home page
    And the page load completely
    When the user select trips for the next two years
    Then the user should be able so search

  Scenario: If there are seats, display “Seats available! Call 0800 MARSAIR to book!”

    Given the user is accessing the home page
    And the page load completely
    And seats are available
    When the user complete the search
    Then the message must be “Seats available! Call 0800 MARSAIR to book!”


  Scenario: If there are no seats, display “Sorry, there are no more seats available.”

    Given the user is accessing the home page
    And the page load completely
    And seats are not available
    When the user complete the search
    Then the message must be “Sorry, there are no more seats available.”