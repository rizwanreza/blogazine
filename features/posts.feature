Feature: Posts
  In order to publish articles
  As a blog publisher
  I want to be able to post from admin

  Background:
    Given I am logged in as administrator
  
  Scenario: I visit to the new post page
    Given I am on dashboard
    When I click "new-post-button"
    Then I should be on the New Post page
  
  Scenario: I post an article
    Given I am on the New Post page
    When I input data
    And I press "post_submit"
    Then I should see "Test Post"
  
  Scenario: I edit an article
    Given I have a post already
    And I am on the post page
    And I should see "Test Post"
    When I click "edit-button"
    And I fill in "post_title" with "Cucumber Post"
    And I press "post_submit"
    Then I should see "Cucumber Post"
  
  Scenario: I delete an article
    Given I have a post already
    And I am on the post page
    And I should see "Test Post"
    When I click "delete-button"
    Then I should not see "Test Post"
  
  
  