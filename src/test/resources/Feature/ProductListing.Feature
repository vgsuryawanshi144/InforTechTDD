Feature: Product Page Functionality

  Scenario: Verify the product page loads correctly
    Given I am on a product page
    Then the product page should load successfully

  Scenario: Verify the product image is displayed
    Given I am on a product page
    Then the product image should be displayed

  Scenario: Verify the product image can be zoomed
    Given I am on a product page
    When I hover over the product image
    Then the product image should be zoomable

  Scenario: Verify the product title is displayed
    Given I am on a product page
    Then the product title should be displayed

  Scenario: Verify the product price is displayed
    Given I am on a product page
    Then the product price should be displayed

  Scenario: Verify the product description is displayed
    Given I am on a product page
    Then the product description should be displayed

  Scenario: Verify the product specifications are displayed
    Given I am on a product page
    Then the product specifications should be displayed

  Scenario: Verify the product reviews are displayed
    Given I am on a product page
    Then the product reviews section should be displayed

  Scenario: Verify the "Add to Cart" button
    Given I am on a product page
    Then the "Add to Cart" button should be displayed
    And the "Add to Cart" button should be functional

  Scenario: Verify the "Add to Wishlist" button
    Given I am on a product page
    Then the "Add to Wishlist" button should be displayed
    And the "Add to Wishlist" button should be functional

  Scenario: Verify the "Compare" button
    Given I am on a product page
    Then the "Compare" button should be displayed
    And the "Compare" button should be functional

  Scenario: Verify the related products section
    Given I am on a product page
    Then the related products section should be displayed

  Scenario: Verify the breadcrumb navigation
    Given I am on a product page
    Then the breadcrumb navigation should be displayed

  Scenario: Verify the product availability status
    Given I am on a product page
    Then the product availability status should be displayed

  Scenario: Verify the product SKU is displayed
    Given I am on a product page
    Then the product SKU should be displayed

  Scenario: Verify the quantity selector
    Given I am on a product page
    Then the quantity selector should be displayed
    And the quantity selector should allow selecting different quantities
