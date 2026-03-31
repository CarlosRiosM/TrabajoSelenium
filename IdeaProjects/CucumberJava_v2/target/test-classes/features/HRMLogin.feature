Feature: Login to HRM Application

  @LoginValidCredentials
  Scenario Outline: Login to HRM Application
    Given user enters <username> and <password>
    When user is on directory page
    Then is search button displayed

    Examples:
      | username | password |
      | Admin | admin123 |