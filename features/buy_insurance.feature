@wip
Feature: Buy insurance

  Scenario: Basic case
    Given I have given employer's data
    And I have given employee's data
    When I order the invoice
    Then I get a confirmation message
    And the order is registered
    And the data is reported to billing system

  Scenario: Obligatory fields
    Given I have given employer's data
    And I have given employee's data
    But I have left employee's ssn blank
    When I order the invoice
    Then I get an error message
