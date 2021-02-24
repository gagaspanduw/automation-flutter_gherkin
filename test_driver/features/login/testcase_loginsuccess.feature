
Feature: Login
  User should be able to login successfully after clicking login button.
    
Scenario: User logs in successfully
    Given Verify first Login Page 
    Then  User input email
    And   User input password
    When  Click the login button
    Then  Verify Success login