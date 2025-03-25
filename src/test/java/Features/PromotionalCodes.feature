@promotional-code @ready
Feature: Promotional Code

  Scenario: Promotional code valid format

  Given the user is at te homepage
  When he fill the promotional code field with ""
  Then the message shoud be "Promotional code [code] used: [discount]% discount!"

  Scenario: Promotional code invalid format

  Given the user is at te homepage
  When he fill the promotional code field with ""
  Then the message must be "Sorry, code [invalid promo code] is not valid"g
