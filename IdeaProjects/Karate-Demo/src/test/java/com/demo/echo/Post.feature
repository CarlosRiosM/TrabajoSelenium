Feature: POST Api demo

  Background:
    * url 'https://postman-echo.com'
    * header Accept = 'application/json'

    # Simple POST Demo
  Scenario: Post Demo 1
    Given url 'https://postman-echo.com/post'
    When header Accept = 'application/json'
    And request {"name": "Carlos", "job": "teacher"}
    And method POST
    And status 200
    And print response

    # Demo with background
  Scenario: Post Demo 2
    Given path '/post'
    And request {"name": "Carlos Rios", "job": "QA Analyst"}
    When method POST
    Then status 200
    And print response
    
     # Demo with background
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "Carlos Rios", "job": "QA Analyst"}
    When method POST
    Then status 201
    And match response == {"name":"Carlos Rios","job":"QA Analyst","id":"#string","createdAt":"#ignore"}
    And print response

         # Demo with background
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "Carlos Rios", "job": "QA Analyst"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

             # Demo with background
  Scenario: Post Demo 5
    Given path '/users'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

    # Demo with background
  Scenario: Post Demo 6
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/data/request1.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response