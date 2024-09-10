Feature: Order Tracking and History

  Scenario: Ensure that the order tracking page loads correctly and all elements are displayed as expected
    Given I am on the order tracking page
    Then the following elements should be visible:
      | Order Tracking Input Field |
      | Track Order Button         |
      | Order Status Display       |
      | Order History Link         |
      | Error Message Area         |

  Scenario: Ensure that tracking an order with a valid tracking number returns the correct order details and status
    Given I am on the order tracking page
    When I enter a valid tracking number
    And I click on the "Track Order" button
    Then I should see the correct order details
    And the order status should reflect the current state of the order

  Scenario: Ensure that tracking an order with an invalid tracking number returns an appropriate error message
    Given I am on the order tracking page
    When I enter an invalid tracking number
    And I click on the "Track Order" button
    Then I should see an error message indicating that the tracking number is invalid

  Scenario: Ensure that the order status updates correctly reflect the current state of the order
    Given I am on the order tracking page
    And I have tracked an order with a valid tracking number
    When the order status changes
    Then the updated status should be reflected on the order tracking page

  Scenario: Ensure that the order history is displayed correctly for a user, showing all past orders with accurate details
    Given I am logged in and on the order history page
    Then I should see a list of all past orders
    And each order should display accurate details including order number, date, and status

  Scenario: Ensure that the order details page loads correctly and displays comprehensive details about a specific order
    Given I am logged in and on the order history page
    When I click on a specific order
    Then I should be redirected to the order details page
    And the order details page should display comprehensive information including:
      | Order Number      |
      | Order Date        |
      | Product Details   |
      | Shipping Address  |
      | Billing Address   |
      | Payment Method    |
      | Order Status      |
      | Tracking Number   |
      | Shipping Details  |
      | Itemized List     |
      | Total Amount      |
