@invalid-dates @ready
Feature: Impossible schedule

  Scenario: Return date less than 1 years from departure

  Scenario: Flights leave every six months, in July and December, both ways.

    Given the user is accessing the home page
    And the user select July
    And the user select December
    When the user search for seats
    Then the message must be “Unfortunately, this schedule is not possible. Please try again.”