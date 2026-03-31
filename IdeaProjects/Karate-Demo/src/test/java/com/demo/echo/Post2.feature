Feature: POST Api demo

  Background:
    * url 'https://postman-echo.com'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')
    * def requestBody = read('request1.json')
    * def requestBody2 = read('request1.json')

        # Demo with background
  Scenario: Post Demo 2
    Given path '/post'
    And request { "name": "Carlos", "lastname": "Ríos", "Age": 27 }
    When method POST
    Then status 200
    And print response
    And match $ == expectedOutput

                 # Demo with background
  Scenario: Post Demo 5
    Given path '/post'
    And request requestBody2
    When method POST
    Then status 200
    And print expectedOutput

        # Demo with background
  Scenario: Post Demo 6
    Given path '/post'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/com.demo.echo/request1.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 200
    And print expectedOutput