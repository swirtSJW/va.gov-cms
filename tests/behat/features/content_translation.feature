
Feature: Content translation is an available option.
  In order to make sure content translation is an available feature, I need to
  be able to access the tools to use it.

  @api @translation
  Scenario: Ensure that Benefits detail pages can have a translation.
    When I am logged in as a user with the "content_editor" role
    Given I am at "/admin/content?type=page"
    Then I should see "Translate" in the "td.views-field-langcode" element
    When I click "Translate"
    Then I should see "Translations of" in the "h1.page-title" element
    Then I should see "Translate" in the "nav.tabs" element
