Feature: Admins and non admins can and cannot merge articles
  As an admin
  In order to make sure users don't mess with other users' content
  I want to restrict the ability of merging articles to admins

  Background:
    Given the blog is set up

  Scenario: Non admins cannot merge articles
    Given I am logged in as a regular user
    When I go to the admin page
    Then I should not see "Merge Articles"

  Scenario: Admins can merge articles
    Given I am logged into the admin panel
    When I go to the admin edit page of article 3
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles have been merged successfully!"
