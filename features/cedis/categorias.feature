Feature: Initial test
  In order to test the Categories view in the system.


  Background: Login
    Given I am on the homepage
    When I fill in "mail" with "admin"
    And I fill in "password" with "admin"
    And I press "Ingresar"
    Then I should see "Library-CEDIS"

  Scenario: Vista Categorias
    Given I am on the homepage
    When I follow "Categorias"
    Then I should see " + Nueva Categoria"
    Then I should see "Nombre"
    Then I should see "Descripcion"
    Then I should see "Estado"
    Then I should see "# Libros"
    Then I should see "Acciones"

  Scenario: Agregar categoria
    Given I am on the homepage
    When I follow "Categorias"
    And I follow "+ Nueva Categoria"
    And I fill in "name" with "Electronica"
    And I fill in "descripcion" with "Categoria Electronica"
    And I press "Agregar Categoria"
    Then I should see "Electronica"
    Then I should see "Categoria Electronica"

  Scenario: Editar Categoria
    Given I am on the homepage
    When I follow "Categorias"
    And I follow "Editar" in row with "Categoria Electronica"
    And I fill in "descripcion" with "New Description"
    And I press "Actualizar Categoria"
    Then I should see "Electronica"
    Then I should see "New Description"

  Scenario: Eliminar Categoria
    Given I am on the homepage
    When I follow "Categorias"
    And I follow "Eliminar" in row with "Electronica"
    Then I should not see "Electronica"