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

    Given the user is searching a flight
    And the user select <departure>
    And the user select <return>
    When the user search for seats
    Then the message must be <message>

    Examples:
      | departure                     | return                        | message |
      | July                          | July                          | false   |
      | July                          | December                      | true    |
      | July                          | July (next year)              | true    |
      | July                          | December (next year)          | true    |
      | July                          | July (two years from now)     | true    |
      | July                          | December (two years from now) | true    |

      | December                      | July                          | false   |
      | December                      | December                      | false   |
      | December                      | July (next year)              | true    |
      | December                      | December (next year)          | true    |
      | December                      | July (two years from now)     | true    |
      | December                      | December (two years from now) | true    |

      | July (next year)              | July                          | false   |
      | July (next year)              | December                      | false   |
      | July (next year)              | July (next year)              | false   |
      | July (next year)              | December (next year)          | true    |
      | July (next year)              | July (two years from now)     | true    |
      | July (next year)              | December (two years from now) | true    |

      | December (next year)          | July                          | false   |
      | December (next year)          | December                      | false   |
      | December (next year)          | July (next year)              | false   |
      | December (next year)          | December (next year)          | false   |
      | December (next year)          | July (two years from now)     | true    |
      | December (next year)          | December (two years from now) | true    |

      | July (two years from now)     | July                          | false   |
      | July (two years from now)     | December                      | false   |
      | July (two years from now)     | July (next year)              | false   |
      | July (two years from now)     | December (next year)          | false   |
      | July (two years from now)     | July (two years from now)     | false   |
      | July (two years from now)     | December (two years from now) | true    |

      | December (two years from now) | July                          | false   |
      | December (two years from now) | December                      | false   |
      | December (two years from now) | July (next year)              | false   |
      | December (two years from now) | December (next year)          | false   |
      | December (two years from now) | July (two years from now)     | false   |
      | December (two years from now) | December (two years from now) | false   |


  Scenario: Trips for the next two years should be searchable.

    Given the user is at the search page
    When the user select trips for the next two years
    Then the user should be able so search

  Scenario: If there are seats, display “Seats available! Call 0800 MARSAIR to book!”

    Given the user is at the search page
    And seats are available
    When the user complete the search
    Then the message “Seats available! Call 0800 MARSAIR to book!” must be present
g
  Scenario: If there are no seats, display “Sorry, there are no more seats available.”

    Given the user is at the search page
    And seats are not available
    When the user complete the search
    Then the message “Sorry, there are no more seats available.” must be present