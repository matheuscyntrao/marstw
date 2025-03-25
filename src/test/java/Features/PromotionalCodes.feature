@promotional-code @ready
Feature: Promotional Code

  Scenario Outline: Promotional code valid format

    Given the user is accessing the home page
    When he fill the promotional code field with <promocode>
    Then the message shoud be "Promotional code [code] used: [discount]% discount!"

    Examples:
      | scenario | promocode   | functional result
      | 00%      | 0PG-OSU-628 | pass but make sense 00% of discount? |
      | 10%      | JK1-CJC-247 | pass                                 |
      | 20%      |  AA2-AAA-114 | pass                             |
      | 30%      | AF3-FJK-418 | pass                                 |
      | 40%      | AF3-FJK-418 | pass                                 |



  Scenario: Promotional code invalid format

    Given the user is accessing the home page
    When he fill the promotional code field with ""
    Then the message must be "Sorry, code [invalid promo code] is not valid"g
