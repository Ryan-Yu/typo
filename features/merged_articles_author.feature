Feature: Retain one author of two merged articles
  As a blog administrator
  In order to make content more concise
  I want to be able to merge the text of two articles and retain the author of one of them

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Admins can merge articles
    When I go to the admin edit page of article 3
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles have been merged successfully!"
    And "regularuser" should be the author of 1 articles
    And "regularuser2" should be the author of 0 articles
    