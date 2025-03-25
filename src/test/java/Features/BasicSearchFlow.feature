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
      | departure                     | return                        | promotionalCode | message                                   |
      | July                          | July                          |                 | false                                     |
      | July                          | December                      |                 | Seats available!                          |
      | July                          | July (next year)              |                 | Seats available!                          |
      | July                          | December (next year)          |                 | Seats available!                          |
      | July                          | July (two years from now)     |                 | Seats available!                          |
      | July                          | December (two years from now) |                 | Seats available!                          |
      | December                      | July                          |                 | Sorry, there are no more seats available. |
      | December                      | December                      |                 | Sorry, there are no more seats available. |
      | December                      | July (next year)              |                 | Seats available!                          |
      | December                      | December (next year)          |                 | Seats available!                          |
      | December                      | July (two years from now)     |                 | Seats available!                          |
      | December                      | December (two years from now) |                 | Seats available!                          |
      | July (next year)              | July                          |                 | Sorry, there are no more seats available. |
      | July (next year)              | December                      |                 | Sorry, there are no more seats available. |
      | July (next year)              | July (next year)              |                 | Sorry, there are no more seats available. |
      | July (next year)              | December (next year)          |                 | Seats available!                          |
      | July (next year)              | July (two years from now)     |                 | Seats available!                          |
      | July (next year)              | December (two years from now) |                 | Seats available!                          |
      | December (next year)          | July                          |                 | Sorry, there are no more seats available. |
      | December (next year)          | December                      |                 | Sorry, there are no more seats available. |
      | December (next year)          | July (next year)              |                 | Sorry, there are no more seats available. |
      | December (next year)          | December (next year)          |                 | Sorry, there are no more seats available. |
      | December (next year)          | July (two years from now)     |                 | Seats available!                          |
      | December (next year)          | December (two years from now) |                 | Seats available!                          |
      | July (two years from now)     | July                          |                 | Sorry, there are no more seats available. |
      | July (two years from now)     | December                      |                 | Sorry, there are no more seats available. |
      | July (two years from now)     | July (next year)              |                 | Sorry, there are no more seats available. |
      | July (two years from now)     | December (next year)          |                 | Sorry, there are no more seats available. |
      | July (two years from now)     | July (two years from now)     |                 | Sorry, there are no more seats available. |
      | July (two years from now)     | December (two years from now) |                 | true                                      |
      | December (two years from now) | July                          |                 | Sorry, there are no more seats available. |
      | December (two years from now) | December                      |                 | Sorry, there are no more seats available. |
      | December (two years from now) | July (next year)              |                 | Sorry, there are no more seats available. |
      | December (two years from now) | December (next year)          |                 | Sorry, there are no more seats available. |
      | December (two years from now) | July (two years from now)     |                 | Sorry, there are no more seats available. |
      | December (two years from now) | December (two years from now) |                 | Sorry, there are no more seats available. |


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