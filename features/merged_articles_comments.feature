Feature: Make sure a merged article has comments from both articles
  As a blog administrator
  In order to retain all original content on the blog
  I want to be able to merge the text of two articles and retain both of their comments on the merged article

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Admins can merge articles
    When I go to the admin edit page of article 3
    Then I should see "Merge Articles"
    When I fill in "merge_article_id" with "4"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles have been merged successfully!"
    When I am on the home page
    Then I should see "Article1"
    When I follow "Article1"
    Then I should see "Comment1"
    And I should see "Comment2"