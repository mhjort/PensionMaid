@information
Feature: Order insurance information

  Scenario: Basic case
    Given I have given employer's data
    When I order the information package
    Then I get a confirmation message
    And the order is registered
  
  Scenario: Obligatory fields
    Given I have given employer's data
    But I have not given address
    When I order the information package
    Then I get an error message

