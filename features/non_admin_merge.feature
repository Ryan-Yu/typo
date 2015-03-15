Feature: Non admins cannot merge articles
  As an admin
  In order to make sure users don't mess with other users' content
  I want to restrict the ability of merging articles to admins

  Background:
    Given the blog is set up
    And I am logged in as a regular user

  Scenario: Non admins cannot merge articles
    When I go to the admin page
    Then I should not see "Merge Articles"
    And I should not see "All Articles"
