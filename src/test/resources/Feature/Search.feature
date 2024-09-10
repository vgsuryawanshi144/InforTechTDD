Feature: Search Functionality

  Scenario: Verify search functionality with a valid product name
    Given I am on the homepage
    When I search for "valid product name"
    Then I should see relevant search results for "valid product name"

  Scenario: Verify search functionality with an invalid product name
    Given I am on the homepage
    When I search for "invalid product name"
    Then I should see a message indicating no results found

  Scenario: Verify search functionality with a partial product name
    Given I am on the homepage
    When I search for "partial name"
    Then I should see relevant search results that match "partial name"

  Scenario: Verify search functionality with a category name
    Given I am on the homepage
    When I search for "category name"
    Then I should see search results relevant to the "category name"

  Scenario: Verify search results page loads correctly
    Given I have performed a search
    Then the search results page should display the results

  Scenario: Verify filtering search results by price
    Given I have performed a search
    When I filter search results by price range "low to high"
    Then I should see search results sorted by price from low to high

  Scenario: Verify filtering search results by brand
    Given I have performed a search
    When I filter search results by brand "brand name"
    Then I should see search results that match the "brand name"

  Scenario: Verify filtering search results by rating
    Given I have performed a search
    When I filter search results by rating "4 stars and above"
    Then I should see search results with ratings of 4 stars or higher

  Scenario: Verify sorting search results by relevance
    Given I have performed a search
    When I sort search results by "relevance"
    Then I should see search results sorted by relevance

  Scenario: Verify sorting search results by price (low to high)
    Given I have performed a search
    When I sort search results by "price (low to high)"
    Then I should see search results sorted by price from low to high

  Scenario: Verify sorting search results by price (high to low)
    Given I have performed a search
    When I sort search results by "price (high to low)"
    Then I should see search results sorted by price from high to low

  Scenario: Verify sorting search results by newest arrivals
    Given I have performed a search
    When I sort search results by "newest arrivals"
    Then I should see search results sorted by newest arrivals

  Scenario: Verify the number of results per page
    Given I have performed a search
    When I check the number of results displayed per page
    Then the number of results per page should be "X" (replace with the expected number)
