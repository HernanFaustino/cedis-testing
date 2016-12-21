Feature: Initial test
  In order to test login


  Background: Login
    Given I am on the homepage
    When I fill in "mail" with "admin"
    And I fill in "password" with "admin"
    And I press "Ingresar"
    Then I should see "Library-CEDIS"

  Scenario: Vista Libros
    Given I am on the homepage
    When I follow "Libros"
    Then I should see "Codigo"

  Scenario: Vista Categorias
    GIven I am on the homepage
    When I follow "Categorias"
    Then I should see "Categorias"
