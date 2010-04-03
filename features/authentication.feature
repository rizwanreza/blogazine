Feature: Authentication
  In order to publish articles
  As a blog publisher
  I want to have an administrator account

  Scenario: the admin logs in
    Given I am on the login page
    When I fill in "admin@admins.com" and "abcd1234"
    Then I should see "Recent Comments"
  
  
  