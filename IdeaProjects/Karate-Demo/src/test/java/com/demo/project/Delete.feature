Feature: DELETE Api demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'

    Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print response

  Scenario: Delete Demo 2
    Given path '/users/2'
    When method DELETE
    Then status 204
    And print response



