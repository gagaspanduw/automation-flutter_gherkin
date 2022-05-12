# Nama fitur yang akan diuji
Feature: LoginFeature
    # Deskripsi fitur yang diuji
    Test login features
    # Scenario yang akan diuji dari sebuah fitur
    Scenario: Test login with valid username and password
        Then I see login page of the app
        And I input valid username
        And I input valid password
        And I click login
        Then Login successfull

    Scenario: Test login with invalid username and password
        Given I see login page of the app
        And I input invalid username
        And I input invalid password
        And I click login
        Then Login unsuccessfull

    Scenario: Test login with empty username and password
        Given I see login page of the app
        And I input empty username
        And I input empty password
        And I click login
        Then Login unsuccessfull