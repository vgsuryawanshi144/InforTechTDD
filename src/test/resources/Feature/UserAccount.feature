Feature: User Account Management

  Scenario: Ensure that a new user can successfully register using valid details
    Given I am on the registration page
    When I enter valid registration details
    And I submit the registration form
    Then I should be redirected to the login page
    And I should see a success message indicating successful registration

  Scenario: Ensure that registration fails with appropriate error messages when invalid or incomplete details are provided
    Given I am on the registration page
    When I enter invalid or incomplete registration details
    And I submit the registration form
    Then I should see appropriate error messages for each invalid or incomplete field

  Scenario: Ensure that a registered user can successfully log in with valid credentials
    Given I am on the login page
    When I enter valid login credentials
    And I submit the login form
    Then I should be redirected to the user dashboard

  Scenario: Ensure that login fails with appropriate error messages when incorrect email or password is provided
    Given I am on the login page
    When I enter incorrect email or password
    And I submit the login form
    Then I should see an error message indicating invalid credentials

  Scenario: Ensure that a user can successfully reset their password using the "Forgot Password" feature
    Given I am on the login page
    When I click on the "Forgot Password" link
    And I enter my registered email address
    And I submit the password reset request
    Then I should receive a password reset email
    And I should be able to reset my password using the link in the email

  Scenario: Ensure that a user can update their account information and save the changes successfully
    Given I am logged in and on the account settings page
    When I update my account information
    And I save the changes
    Then the changes should be saved successfully
    And I should see a confirmation message

  Scenario: Ensure that a user can view their order history from their account page
    Given I am logged in and on the account page
    When I navigate to the order history section
    Then I should be able to view my order history

  Scenario: Ensure that a user can successfully log out from their account
    Given I am logged in
    When I log out
    Then I should be redirected to the login page

  Scenario: Ensure that a user can delete their account and receive a confirmation message
    Given I am logged in and on the account settings page
    When I choose to delete my account
    And I confirm the deletion
    Then my account should be deleted
    And I should receive a confirmation message

  Scenario: Ensure that a user can upload a profile picture successfully
    Given I am logged in and on the account settings page
    When I upload a profile picture
    Then the profile picture should be uploaded successfully
    And I should see the new profile picture on my account page

  Scenario: Ensure that a user can change their password successfully
    Given I am logged in and on the account settings page
    When I change my password
    And I save the changes
    Then the password should be changed successfully
    And I should be able to log in with the new password

  Scenario: Ensure that a user can add and save multiple addresses to their account
    Given I am logged in and on the address management page
    When I add multiple addresses
    And I save the addresses
    Then the addresses should be saved and displayed in my account

  Scenario: Ensure that a user can edit and save changes to an existing address
    Given I am logged in and on the address management page
    When I edit an existing address
    And I save the changes
    Then the address should be updated successfully

  Scenario: Ensure that an active session times out after a period of inactivity
    Given I am logged in
    When I remain inactive for the specified timeout period
    Then I should be logged out automatically
    And I should be redirected to the login page

  Scenario: Ensure that all error messages are clear, user-friendly, and accurately describe the issue encountered
    Given I am on any form page
    When I submit the form with errors
    Then all error messages should be clear and user-friendly

  Scenario: Ensure that the system prevents registration with an email already in use
    Given I am on the registration page
    When I enter an email that is already registered
    And I submit the registration form
    Then I should see an error message indicating the email is already in use

  Scenario: Ensure that all navigation and call-to-action buttons are clear and easily identifiable
    Given I am on any page
    Then all navigation and call-to-action buttons should be clear and easily identifiable

  Scenario: Ensure that the email field is correctly located in the Contact tab of the profile section
    Given I am on the profile page
    Then the email field should be located in the Contact tab

  Scenario: Ensure that the Password tab is highlighted to indicate the current section when selected
    Given I am on the profile page
    When I select the Password tab
    Then the Password tab should be highlighted

  Scenario: Ensure that the generic error message "This is a required field" is displayed accurately where applicable
    Given I am on a form page
    When I submit the form with missing required fields
    Then the error message "This is a required field" should be displayed accurately

  Scenario: Ensure that informational text is placed below the email and password fields to avoid user confusion
    Given I am on the registration or login page
    Then the informational text should be placed below the email and password fields
