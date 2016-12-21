Feature: Initial test
  In order to test the Books view in the system.


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

  Scenario: Nuevo libro
    Given I am on the homepage
    When I follow "Libros"
    And I follow "+ Nuevo Libro"
    And I fill in "title" with "Ingenieria de Software"
    And I fill in "author" with "Lan Sommerville"
    And I select "3" from "edition"
    And I select "2" from "category_id"
    And I fill in "observations" with "Original Book"
    And I select "Disponible" from "status_id"
    And I press "Agregar Libro"
    Then I should see "Ingenieria de Software"

  Scenario: Editar Libro
    Given I am on the homepage
    When I follow "Libros"
    And I follow "Editar" in row with "Ingenieria de Software"
    And I select "5" from "edition"
    And I press "Actualizar Libro"
    And I confirm alert
    Then I should see "Ingenieria de Software"

  Scenario: Eliminar Libro
    Given I am on the homepage
    When I follow "Libros"
    And I follow "Eliminar" in row with "Ingenieria de Software"
    Then I should not see "Ingenieria de Software"
  
    
