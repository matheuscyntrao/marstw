Feature: Go back to the flight search from anywhere on the site

  Scenario: “Book a ticket to the red planet now!” should apperar somewhere prominent on the page.

    Given the user is accessing the home page
    When the page load completely
    Then the page must have the text "Book a ticket to the red planet now!"
    And should appear somewhere prominent on the page (?)
    # need more description to check that

  Scenario: Clicking it takes the user to the home page.

    Given the user is accessing the home page
    When the page load completely
    And the user click at visible text "Book a ticket to the red planet now!"
    Then the user must be redirect to the home page

  Scenario: Clicking the MarsAir logo


    Given the user is accessing the home page
    When the page load completely
    And the user click at MarsAir logo
    Then the user must be redirect to the home page


  Scenario: Position of MarsAir logo

    Given the user is accessing the home page
    When the page load completely
    Then the logo must be at the left-top side of the website
