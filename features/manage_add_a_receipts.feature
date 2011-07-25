Feature: Manage add_a_receipts
  Scenario: Register new add_a_receipt
    Given I am on the home page
    When I fill "Walgreens" into the "Location" text box
    And I fill "07/18/2011" into the "Date" text box
    And I fill "3.14" into the "Price" text box
    And I press "om nom nom!"
    Then the following row should exist in the grid
      | Date       | Location  | Price |
      | 07/18/2011 | Walgreens | 3.14  |
