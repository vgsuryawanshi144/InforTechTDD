Feature: Shopping Cart Functionality

  Scenario: Verify adding a product to the cart
    Given I am on a product page
    When I add the product to the cart
    Then the product should be added to the cart

  Scenario: Verify updating the quantity of a product in the cart
    Given I have a product in the cart
    When I update the quantity of the product
    Then the cart should reflect the updated quantity

  Scenario: Verify removing a product from the cart
    Given I have a product in the cart
    When I remove the product from the cart
    Then the product should be removed from the cart

  Scenario: Verify the cart updates the total price correctly
    Given I have products in the cart
    When I update the quantity or remove a product
    Then the cart should update the total price correctly

  Scenario: Verify the cart persists after page refresh
    Given I have products in the cart
    When I refresh the page
    Then the cart should persist and display the same products

  Scenario: Verify the "Continue Shopping" button
    Given I am viewing the cart
    When I click on the "Continue Shopping" button
    Then I should be redirected back to the shopping page

  Scenario: Verify the "Proceed to Checkout" button
    Given I am viewing the cart
    When I click on the "Proceed to Checkout" button
    Then I should be redirected to the checkout page

  Scenario: Verify the cart displays product thumbnails
    Given I have products in the cart
    Then the cart should display product thumbnails

  Scenario: Verify the cart displays product names
    Given I have products in the cart
    Then the cart should display product names

  Scenario: Verify the cart displays product prices
    Given I have products in the cart
    Then the cart should display product prices

  Scenario: Verify applying a discount code
    Given I am on the cart page
    When I apply a discount code
    Then the discount code should be applied

  Scenario: Verify the discount code is applied correctly
    Given I have applied a discount code
    Then the cart should display the discount amount

  Scenario: Verify the cart displays the total price before discount
    Given I have products in the cart
    Then the cart should display the total price before applying any discount

  Scenario: Verify the cart displays the total price after discount
    Given I have applied a discount code
    Then the cart should display the total price after applying the discount

  Scenario: Verify the shipping cost is calculated correctly
    Given I have products in the cart
    When I proceed to checkout
    Then the shipping cost should be calculated correctly based on the shipping address

  Scenario: Verify the tax is calculated correctly
    Given I have products in the cart
    When I proceed to checkout
    Then the tax should be calculated correctly based on the shipping address and applicable tax rates
