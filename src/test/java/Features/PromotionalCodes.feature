@promotional-code @ready
Feature: Promotional Code

  Scenario Outline: Promotional code valid format

    Given the user is accessing the home page
    When he fill the promotional code field with <promocode>
    Then the message shoud be "Promotional code [code] used: <discount>% discount!"

    Examples:
      | discount | promocode   |
      | 00%      | 0PG-OSU-628 |
      | 10%      | JK1-CJC-247 |
      | 20%      | AA2-AAA-114 |
      | 30%      | AA3-AAA-126 |
      | 40%      | AA4-AAA-318 |
      | 50%      | AA5-AAA-117 |
      | 60%      | AA6-AAA-118 |
      | 70%      | AA7-AAA-007 |
      | 80%      | AA8-AAA-008 |
      | 90%      | AA9-AAA-009 |


  Scenario Outline: Promotional code invalid format

    Given the user is accessing the home page
    When he fill the promotional code field with <promocode>
    Then the message must be "Sorry, code [invalid promo code] is not valid"g

    Examples:
      | scenario                           | promocode   |
      | Bug when promocode sum ends with 8 | 0PG-OSU-628 |
      | Invalid code                       | AAA-AAA-AAA |
