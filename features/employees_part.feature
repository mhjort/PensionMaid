@employee
Feature: Calculate employee's part of insurance payment

  Scenario: Employee 53 years old this year
   Given I have given salary of 1000 euros
   When I give SSN 150956-123X
   Then the employee's part is 54 euros

  Scenario: Employee 52 years old this year
    Given I have given salary of 1000 euros
    When I give SSN 060757-456Y
    Then the employee's part is 43 euros   


