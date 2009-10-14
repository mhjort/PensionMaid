@employee
@wip
Feature: Calculate employee's part of insurance payment

  Scenario: Employee 53 years old this year
   Given I have given salary of 1000 euros
   When I give SSN 150956-123X
   Then the employee's part is 54 euros

  Scenario: Employee 52 years old this year
    Given I have given salary of 1000 euros
    When I give SSN 060757-456Y
    Then the employee's part is 43 euros   

  Scenario: SSN missing
    Given I have not given the SSN of the employee
    When I give salary of 1000 euros
    Then the insurance payment is calculated
    And I am informed about invalid ssn

  Scenario: Invalid SSN
    Given I have given SSN 401279-150N
    When I give salary of 1000 euros
    Then the insurance payment is calculated
    And I am informed about invalid ssn
