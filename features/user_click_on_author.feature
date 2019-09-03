Feature: Open up posts
  "As a user,
  In order to interact with a post
  I would like to be able to open it."

  Background:
    Given the following user exists
    | name    |
    | Fat Bob |
    And the following post exists
    | title        | text          | user     |
    | Codeacademy  | Smooth-ride   | Fat Bob  |
    And I am logged in as "Fat Bob"  
   
  Scenario: Reader can open up posts
    When I visit the site
    And I click "FORUM"
    And I click on "Fat Bob" 
    Then I should see "Fat Bob's Profile Page"
