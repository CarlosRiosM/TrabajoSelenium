Feature: PATCH Api demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'
    * def expectedOutput = read('response2.json')
    * def requestBody = read('request2.json')

  Scenario: Patch Demo 1
    Given path '/users/2'
    And request {"name": "Carlos Rios", "job": "QA Leader"}
    When method PATCH
    Then status 200
    And print response

    # Demo with background
  Scenario: Patch Demo 2
    Given path '/users/2'
    And request requestBody
    When method PATCH
    Then status 200
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response





