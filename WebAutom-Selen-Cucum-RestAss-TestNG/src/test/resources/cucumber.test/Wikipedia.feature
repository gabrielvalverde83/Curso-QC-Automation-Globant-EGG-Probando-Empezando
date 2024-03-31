Feature: request the Star Wars API

  Scenario: Request the Star Wars API
    Given the user is on SW api requesting character id
    When the user search on Wikipedia
    Then the user should be able to see the article page correctly displayed
