Feature: Basic Florum Categories
  "As a user,
  In order to sort through various plant topics,
  I would like to see a main forum page with separate categories"

  Background:
    Given the following user exists
    | name    |
    | Fat Bob |
    | Slim Jim|
    And the following post exists
    | title        | text          | user     | category     |
    | Codeacademy  | Smooth-ride   | Fat Bob  | general      |
    | Hacklife     | smaaaahht     | Slim Jim | marketplace  |
    And I am logged in as "Fat Bob" 

  Scenario: Visitor can see basic forum categories
    When I visit the site
    When I click "FLORUM"
    Then I should see "MARKETPLACE"
    Then I should see "GENERAL"
    Then I should see "GROWTH & CARE"
    Then I should see "PLANT NEWS"