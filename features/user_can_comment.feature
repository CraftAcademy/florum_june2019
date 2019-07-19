Feature: User can comment posts
  "As a visitor,
  In order to communicate with other users,
  I would like to be able to comment on their posts"

  Background:
    Given the following user exists
    | name     |
    | Fat Bob  |
    | Slim Jim |
    And the following post exists
    | title        | text          | category        | user     |
    | Codeacademy  | Smooth-ride   | marketplace     | Fat Bob  |
    | Hacklife     | smaaaahht     | general         | Slim Jim |
    And I am logged in as "Slim Jim"
    And I visit the site
    And I click "FLORUM"

  Scenario: User can comment a post
    When I click on "Open"
    And I fill the "Comment" with "This is a great post!"
    And I click "Leave Comment"
    Then I should see "Your comment was successfully created"
    And I should see "Commenter: Slim Jim"
    And I should see "Comment: This is a great post!"

  Scenario: User tries to leave empty comment [sad path]
    When I click on "Open"
    And I fill the "Comment" with ""
    And I click "Leave Comment"
    Then I should see "Your comment must have content"