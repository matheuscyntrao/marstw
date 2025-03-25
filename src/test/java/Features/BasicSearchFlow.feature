@basictest @ready
Feature: Basic Search Flow

  Scenario: There should be a departure field on the search form

    Given the user is accessing the home page
    When the page load completely
    Then there sould be a field called "departure"

  Scenario: There should be a return field on the search form

    Given the user is accessing the home page
    When the page load completely
    Then there sould be a field called "return"

  Scenario Outline: Flights leave every six months, in July and December, both ways.

    Given the user is accessing the home page
    And the page load completely
    And the user search for flights "<departure>" "<return>" "<promotionalCode>"
    Then the message must be "<message>"

    Examples:
      | departure                     | return                        | promotionalCode | message |
      | July                          | July                          | promotionalCode | false   |
      | July                          | December                      | promotionalCode | true    |
      | July                          | July (next year)              | promotionalCode | true    |
      | July                          | December (next year)          | promotionalCode | true    |
      | July                          | July (two years from now)     | promotionalCode | true    |
      | July                          | December (two years from now) | promotionalCode | true    |

      | December                      | July                          | promotionalCode | false   |
      | December                      | December                      | promotionalCode | false   |
      | December                      | July (next year)              | promotionalCode | true    |
      | December                      | December (next year)          | promotionalCode | true    |
      | December                      | July (two years from now)     | promotionalCode | true    |
      | December                      | December (two years from now) | promotionalCode | true    |

      | July (next year)              | July                          | promotionalCode | false   |
      | July (next year)              | December                      | promotionalCode | false   |
      | July (next year)              | July (next year)              | promotionalCode | false   |
      | July (next year)              | December (next year)          | promotionalCode | true    |
      | July (next year)              | July (two years from now)     | promotionalCode | true    |
      | July (next year)              | December (two years from now) | promotionalCode | true    |

      | December (next year)          | July                          | promotionalCode | false   |
      | December (next year)          | December                      | promotionalCode | false   |
      | December (next year)          | July (next year)              | promotionalCode | false   |
      | December (next year)          | December (next year)          | promotionalCode | false   |
      | December (next year)          | July (two years from now)     | promotionalCode | true    |
      | December (next year)          | December (two years from now) | promotionalCode | true    |

      | July (two years from now)     | July                          | promotionalCode | false   |
      | July (two years from now)     | December                      | promotionalCode | false   |
      | July (two years from now)     | July (next year)              | promotionalCode | false   |
      | July (two years from now)     | December (next year)          | promotionalCode | false   |
      | July (two years from now)     | July (two years from now)     | promotionalCode | false   |
      | July (two years from now)     | December (two years from now) | promotionalCode | true    |

      | December (two years from now) | July                          | promotionalCode | false   |
      | December (two years from now) | December                      | promotionalCode | false   |
      | December (two years from now) | July (next year)              | promotionalCode | false   |
      | December (two years from now) | December (next year)          | promotionalCode | false   |
      | December (two years from now) | July (two years from now)     | promotionalCode | false   |
      | December (two years from now) | December (two years from now) | promotionalCode | false   |


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