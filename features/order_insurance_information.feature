Feature: Order insurance information

  Scenario: Basic case
    Given I have given correct contact information
    When I order the information package
    Then I get a confirmation message
    And the order is registered
