Feature: User can see list of other users
	"As a user,
	In order to connect with other users,
	I would like to see a list of registered users with link to their profiles"

  Background:
    Given the following user exists
      | email            | password     | name    |
      | fatbob@gmail.com | ilovecatfood | Fat Bob |
    And I am logged in as 'fatbob@gmail.com'
    And I visit the site
    And I click "PROFILES"

  Scenario: Visitor successfully view list of other users
    Then I should see "Users"
		And I should see "Name"
		And I should see "John"
		And I should see "Location"
		And I should see "Stockholm"
		And I should see "Show"
		When I click "Show"
		Then I should be on "John's Profile"
