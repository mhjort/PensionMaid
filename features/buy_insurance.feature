@wip
Feature: Buy insurance

  Scenario: Basic case
    Given I have given employer's data
    And I have given employee's data
    And I have given the month and year of employment
    When I order the invoice
    Then I get a confirmation message
    And the data is reported to billing system
    And the order is registered

  Scenario: Obligatory fields
    Given I have given required data
    But I have left employee's ssn blank
    When I order the invoice
    Then I get an error message
  
  Scenario: Salary limit
    Given I have given required data
    When I give salary of 7153 euros
    And I order the invoice
    Then I get an error message

  Scenario: Month cannot be in future
    Given I have given required data
    When I order the invoice
    Then something happens
