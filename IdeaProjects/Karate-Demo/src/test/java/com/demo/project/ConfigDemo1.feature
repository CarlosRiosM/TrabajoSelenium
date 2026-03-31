Feature: Config Demo

  Scenario: Config Demo 1
    Given print "name"

  Scenario: Get Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response