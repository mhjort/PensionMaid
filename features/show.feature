Feature: Show dependencies
  As a coder 
  I want to know the dependencies for the given artifact do
 
  Scenario: Artifact metadata found from ibiblio
    Given 'org.apache.ant:ant-junit:1.7.1' not installed into local repository
    And 'org.apache.ant:ant-junit:1.7.1' installed to ibiblio
    When I call show for 'org.apache.ant:ant-junit:1.7.1'
    Then I should see following dependencies
      |org.apache.ant:ant:1.7.1|
      |junit:junit:3.8.2|

  Scenario: Artifact metadata found from local repo
    Given 'huuhaa:huuhaa:1.0' with dependency 'huuhaa:huuhaa-addon:1.0' installed into local repository
    And 'huuhaa:huuhaa:1.0' not installed to ibiblio
    When I call show for 'huuhaa:huuhaa:1.0'
    Then I should see following dependencies
      |huuhaa:huuhaa-addon:1.0|
