Feature: Checkout Functionality

  Scenario: Verify the checkout page loads correctly
    Given I am on the checkout page
    Then the checkout page should load correctly

  Scenario: Verify the billing address form
    Given I am on the checkout page
    Then the billing address form should be displayed and functional

  Scenario: Verify the shipping address form
    Given I am on the checkout page
    Then the shipping address form should be displayed and functional

  Scenario: Verify selecting a shipping method
    Given I am on the checkout page
    When I select a shipping method
    Then the selected shipping method should be applied

  Scenario: Verify selecting a payment method
    Given I am on the checkout page
    When I select a payment method
    Then the selected payment method should be applied

  Scenario: Verify the order summary
    Given I am on the checkout page
    Then the order summary should display all order details

  Scenario: Verify completing a purchase with a credit card
    Given I am on the checkout page
    When I complete a purchase with a credit card
    Then the purchase should be completed successfully

  Scenario: Verify completing a purchase with PayPal
    Given I am on the checkout page
    When I complete a purchase with PayPal
    Then the purchase should be completed successfully

  Scenario: Verify completing a purchase with a bank transfer
    Given I am on the checkout page
    When I complete a purchase with a bank transfer
    Then the purchase should be completed successfully

  Scenario: Verify the order confirmation email is sent
    Given I have completed a purchase
    Then an order confirmation email should be sent

  Scenario: Verify the user is redirected to the order confirmation page
    Given I have completed a purchase
    Then I should be redirected to the order confirmation page

  Scenario: Verify the billing address is saved
    Given I have completed a purchase
    Then the billing address should be saved for future orders

  Scenario: Verify the shipping address is saved
    Given I have completed a purchase
    Then the shipping address should be saved for future orders

  Scenario: Verify the order is saved in the user's order history
    Given I have completed a purchase
    Then the order should be saved in the user's order history

  Scenario: Verify the order status is updated
    Given I have completed a purchase
    Then the order status should be updated to "Completed"

  Scenario: Verify editing the billing address during checkout
    Given I am on the checkout page
    When I edit the billing address
    Then the edited billing address should be applied

  Scenario: Verify editing the shipping address during checkout
    Given I am on the checkout page
    When I edit the shipping address
    Then the edited shipping address should be applied

  Scenario: Verify the checkout page supports multiple shipping addresses
    Given I am on the checkout page
    When I choose multiple shipping addresses
    Then the checkout page should handle multiple shipping addresses

  Scenario: Verify the checkout page supports multiple payment methods
    Given I am on the checkout page
    When I select multiple payment methods
    Then the checkout page should handle multiple payment methods

  Scenario: Verify guest checkout functionality
    Given I am on the checkout page
    When I proceed with guest checkout
    Then the purchase should be completed successfully without creating an account

  Scenario: Verify the "Save for Later" feature in the checkout
    Given I am on the checkout page
    When I save an item for later
    Then the item should be saved and accessible in the "Save for Later" section

  Scenario: Verify the checkout page handles out-of-stock items
    Given I am on the checkout page
    When an item is out of stock
    Then the checkout page should handle the out-of-stock item appropriately

  Scenario: Verify the checkout page handles expired payment methods
    Given I am on the checkout page
    When I attempt to use an expired payment method
    Then an error message should be displayed

  Scenario: Verify the "Apply Gift Card" functionality
    Given I am on the checkout page
    When I apply a gift card
    Then the gift card value should be applied to the order

  Scenario: Verify the promo code functionality
    Given I am on the checkout page
    When I apply a promo code
    Then the promo code should be applied to the order

  Scenario: Verify the error handling for invalid promo codes
    Given I am on the checkout page
    When I apply an invalid promo code
    Then an error message should be displayed

  Scenario: Verify the tax calculation
    Given I am on the checkout page
    Then the tax should be calculated correctly based on the shipping address

  Scenario: Verify the shipping cost calculation
    Given I am on the checkout page
    Then the shipping cost should be calculated correctly based on the selected shipping method

  Scenario: Verify the loyalty points redemption
    Given I am on the checkout page
    When I redeem loyalty points
    Then the loyalty points should be applied to the order
