Feature: Login for Qabify app

  Scenario: Login for admin
    Given I am logged as admin@example.com
    When I click on token button
    Then I check that the token is correct


  Scenario: Login for user1
    Given I am logged as user1@example.com
    When I click on token button
    Then I check that the token is correct