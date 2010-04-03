Feature: Authentication
  In order to publish articles
  As a blog publisher
  I want to have an administrator account

  Scenario: the admin logs in
    Given I am on the login page
    When I fill in "admin_email" with "admin@admins.com"
    And I fill in "admin_password" with "abcd1234"
    And I press "admin_submit"
    Then I should see "Dashboard"
