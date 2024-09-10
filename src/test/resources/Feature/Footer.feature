Feature: Website Pages and Cross-Device Compatibility

  Scenario: Ensure that the "About Us" page loads correctly, displaying all relevant information without errors
    Given I am on the "About Us" page
    Then the page should load correctly and display all relevant information without errors

  Scenario: Ensure that the "Privacy Policy" page loads correctly, displaying all relevant information without errors
    Given I am on the "Privacy Policy" page
    Then the page should load correctly and display all relevant information without errors

  Scenario: Ensure that the "Terms & Conditions" page loads correctly, displaying all relevant information without errors
    Given I am on the "Terms & Conditions" page
    Then the page should load correctly and display all relevant information without errors

  Scenario: Ensure that the "Return Policy" page loads correctly, displaying all relevant information without errors
    Given I am on the "Return Policy" page
    Then the page should load correctly and display all relevant information without errors

  Scenario: Ensure that the "FAQs" page loads correctly, displaying all relevant information without errors
    Given I am on the "FAQs" page
    Then the page should load correctly and display all relevant information without errors

  Scenario: Ensure that the "Sitemap" page loads correctly, displaying all relevant links without errors
    Given I am on the "Sitemap" page
    Then the page should load correctly and display all relevant links without errors

  Scenario: Ensure that the website loads correctly on mobile devices, displaying all elements properly
    Given I am using a mobile device
    When I visit the website
    Then all elements should be displayed properly and the website should be functional

  Scenario: Ensure that the website loads correctly on tablets, displaying all elements properly
    Given I am using a tablet
    When I visit the website
    Then all elements should be displayed properly and the website should be functional

  Scenario: Ensure that the website loads correctly on different browsers (Chrome, Firefox, Safari, Edge)
    Given I am using a web browser
    When I visit the website
    Then the website should load correctly and display all elements properly on the following browsers:
      | Browser  |
      | Chrome   |
      | Firefox  |
      | Safari   |
      | Edge     |

  Scenario: Ensure that the website loads correctly on different screen sizes, displaying all elements properly
    Given I am using a device with a specific screen size
    When I visit the website
    Then all elements should be displayed properly and the website should be functional

  Scenario: Ensure that the website loads within an acceptable time frame (e.g., under 3 seconds)
    Given I am visiting the website
    When the page starts loading
    Then the website should fully load within 3 seconds
