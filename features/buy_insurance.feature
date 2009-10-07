Feature: Buy insurance

  @wip
  Scenario: Basic case
    Given I have given employer's data
    And I have given employee's data
    When I order the invoice
    Then I get a confirmation message
    And the order is registered
    And the data is reported to billing system
