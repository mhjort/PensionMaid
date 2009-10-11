Feature: Calculate insurance cost

  Scenario: Basic case
    When I give salary of 1000 euros
    Then I get insurance payment of 224 euros

  Scenario: Too high salary
    When I give salary of 7152.10 euros
    Then I am informed about too high salary

  Scenario: Invalid salary
    When I give salary of -1000 euros
    Then I get an error message


