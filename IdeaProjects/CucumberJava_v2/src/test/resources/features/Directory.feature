Feature: I want to use this template for my Directory Page

  Scenario Outline: Login to HRM Application
    Given user enters <username> and <password>

    Examples:
      | username | password |
      | Admin | admin123 |


  @DirectoryTabIsSearchButtonDisplayed
      Scenario: I want to use this template for my Directory Page
        Then user is on directory page
        Then is search button displayed