Feature: Contact Page Functionality

  Scenario: Ensure that the contact form is displayed correctly on the contact page
    Given I am on the contact page
    Then I should see the contact form with the following elements:
      | Name Field         |
      | Email Field        |
      | Phone Number Field |
      | Message Field      |
      | Submit Button      |

  Scenario: Ensure that submitting the contact form with valid details is successful and displays a success message
    Given I am on the contact page
    When I fill in the contact form with valid details:
      | Name          | John Doe         |
      | Email         | john.doe@example.com |
      | Phone Number  | 123-456-7890     |
      | Message       | This is a test message. |
    And I click on the "Submit" button
    Then I should see a success message indicating that the form was submitted successfully

  Scenario: Ensure that submitting the contact form with invalid details displays appropriate error messages
    Given I am on the contact page
    When I fill in the contact form with invalid details:
      | Name          |               |
      | Email         | invalid-email  |
      | Phone Number  | abc-def-ghij   |
      | Message       |              |
    And I click on the "Submit" button
    Then I should see error messages for each invalid field:
      | Name Error       | Name is required. |
      | Email Error      | Please enter a valid email address. |
      | Phone Number Error | Please enter a valid phone number. |
      | Message Error    | Message cannot be empty. |

  Scenario: Ensure that the contact form validation works correctly, preventing submission of incomplete or incorrect details
    Given I am on the contact page
    When I fill in the contact form with incomplete details:
      | Name          |              |
      | Email         |              |
      | Phone Number  |              |
      | Message       |              |
    And I click on the "Submit" button
    Then I should see validation errors indicating which fields are required

  Scenario: Ensure that the "Submit" button on the contact form is functional and correctly submits the form
    Given I am on the contact page
    When I fill in the contact form with valid details:
      | Name          | Alice Smith     |
      | Email         | alice.smith@example.com |
      | Phone Number  | 987-654-3210   |
      | Message       | Please contact me regarding my inquiry. |
    And I click on the "Submit" button
    Then the form should be submitted successfully and I should see a confirmation message

  Scenario: Ensure that the contact details (phone number, email, address) are displayed correctly on the contact page
    Given I am on the contact page
    Then I should see the following contact details displayed correctly:
      | Phone Number   | 123-456-7890     |
      | Email          | contact@example.com |
      | Address        | 123 Main Street, Anytown, USA |

  Scenario: Ensure that the map showing the location of the contact address is displayed correctly on the contact page
    Given I am on the contact page
    Then I should see a map displaying the location of the contact address
    And the map should be interactive and show the correct address location
