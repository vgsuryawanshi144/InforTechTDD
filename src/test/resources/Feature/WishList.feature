Feature: Wishlist Functionality

  Scenario: Ensure that a user can add a product to the wishlist
    Given I am logged in as a registered user
    And I am on the product page for a specific product
    When I click on the "Add to Wishlist" button for the product
    Then the product should be added to my wishlist
    And I should see a success message confirming the addition

  Scenario: Ensure that the wishlist page loads correctly and displays added products
    Given I am logged in as a registered user
    When I navigate to the "Wishlist" page
    Then the wishlist page should load correctly
    And it should display all products that I have added to the wishlist

  Scenario: Ensure that removing a product from the wishlist works correctly
    Given I am logged in as a registered user
    And I have products in my wishlist
    When I click on the "Remove from Wishlist" button for a specific product
    Then the product should be removed from my wishlist
    And I should see a success message confirming the removal

  Scenario: Ensure that the wishlist persists after page refresh
    Given I am logged in as a registered user
    And I have added products to my wishlist
    When I refresh the wishlist page
    Then all previously added products should still be visible in the wishlist

  Scenario: Ensure that a user can view product details from the wishlist
    Given I am logged in as a registered user
    And I have products in my wishlist
    When I click on a product in the wishlist
    Then I should be redirected to the product details page for that product

  Scenario: Ensure that the wishlist displays correct product details
    Given I am logged in as a registered user
    And I have products in my wishlist
    When I view the wishlist page
    Then each product should display accurate details including name, price, and image

  Scenario: Ensure that the wishlist functionality works correctly for out-of-stock products
    Given I am logged in as a registered user
    And a product in my wishlist is out of stock
    When I view the wishlist page
    Then the out-of-stock product should be displayed with an appropriate status message

  Scenario: Ensure that adding the same product to the wishlist multiple times does not create duplicates
    Given I am logged in as a registered user
    And I have already added a product to my wishlist
    When I click on the "Add to Wishlist" button for the same product again
    Then the product should not be added multiple times
    And I should see a message indicating the product is already in the wishlist

  Scenario: Ensure that wishlist items can be sorted or filtered if applicable
    Given I am logged in as a registered user
    And I have multiple products in my wishlist
    When I apply sorting or filtering options on the wishlist page
    Then the products should be sorted or filtered according to the selected criteria

  Scenario: Ensure that the wishlist is cleared successfully
    Given I am logged in as a registered user
    And I have products in my wishlist
    When I click on the "Clear Wishlist" button
    Then all products should be removed from my wishlist
    And I should see a success message confirming the wishlist has been cleared
