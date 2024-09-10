Feature: Homepage Functionality
  As a user, I want to ensure that the homepage loads correctly and its main components work as expected.

  Scenario: Check if homepage loads and elements are visible
    Given I am on the homepage
    Then the following elements should be visible:
      | site logo                     |
      | main navigation menu          |
      | search bar                    |
      | banner image                  |
      | Featured Products section     |
      | Special Offers section        |
      | footer                        |
      | social media icons            |
      | Subscribe to Newsletter field |
      | Subscribe to Newsletter button|

  Scenario: Check redirection from site logo
    Given I am on any page of the website
    When I click on the "site logo"
    Then I should be redirected to the "homepage"

  Scenario: Check navigation links
    Given I am on the homepage
    When I click on the following navigation links:
      | Home       | homepage       |
      | Products   | products page  |
      | About Us   | about us page  |
      | Contact Us | contact us page|

  Scenario: Perform a search
    Given I am on the homepage
    When I search for "sample product"
    Then I should see relevant search results

  Scenario: Check footer links redirection
    Given I am on the homepage
    When I click on a footer link
    Then I should be redirected to the appropriate page
