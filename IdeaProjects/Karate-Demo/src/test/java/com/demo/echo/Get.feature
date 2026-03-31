Feature: Get API Demo

  Background:
    * url 'https://postman-echo.com'
    * header Accept = 'application/json'
    * def requestBody = read('request2.json')

  Scenario: Get Demo 1
    Given url 'https://postman-echo.com/get?name=Carlos&lastName=Ríos&Ig=carlos_riosm1983'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime

    # Get with background
  Scenario: Get Demo 2
    Given path '/get
    And request requestBody
    When method GET
    Then status 200
    And print response

  Scenario: Get Demo 3
    Given path '/get?'
    And param name = Carlos
    And param lastName = Ríos
    And param Ig = carlos_riosm1983
    When method GET
    Then status 200
    And print response