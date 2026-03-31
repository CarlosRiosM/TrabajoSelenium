Feature: Get API Demo

  Background:
    * url 'https://postman-echo.com'
    * header Accept = 'application/json'
    * def requestBody = read('request2.json')

        # Get with background
  Scenario: Get Demo 2
    Given path '/get?name=Carlos&lastName=Ríos&Ig=carlos_riosm1983'
    When method GET
    Then status 200
    And print response

        # Get with background
  Scenario: Get Demo 2
    Given path '/get
    And request requestBody
    When method GET
    Then status 200
    And print response

