Feature: Homepage Verification

  Background:
    Given I am on the homepage

  Scenario: Verify homepage loads correctly
    Then the site logo should be displayed
    And the main navigation menu should be displayed
    And the "Home" link should be displayed in the navigation menu
    And the "Products" link should be displayed in the navigation menu
    And the "About Us" link should be displayed in the navigation menu
    And the "Contact Us" link should be displayed in the navigation menu
    And the search bar should be displayed
    And the banner image should be displayed
    And the "Featured Products" section should be displayed
    And the "Special Offers" section should be displayed
    And the "Latest News" section should be displayed
    And the footer should be displayed
    And the social media icons should be displayed in the footer
    And the "Subscribe to Newsletter" field should be displayed
    And the "Subscribe to Newsletter" button should be displayed

  Scenario: Verify site logo redirects to homepage
    When I click on the site logo
    Then I should be redirected to the homepage

  Scenario: Verify search bar accepts input
    When I enter "test product" into the search bar
    Then the search bar should accept the input

  Scenario: Verify search bar returns results
    When I enter "test product" into the search bar
    And I press the enter key
    Then search results should be displayed

  Scenario: Verify footer links work correctly
    When I click on each footer link
    Then I should be redirected to the respective pages

  Scenario: Verify social media icons in footer
    When I click on each social media icon in the footer
    Then I should be redirected to the respective social media pages
