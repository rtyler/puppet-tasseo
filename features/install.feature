Feature: Install Tasseo code base on the machine


  Scenario: Simple installation
    Given I have an empty Linux machine
    And I've enabled the tasseo module
    When I provision the host
    Then "/srv/tasseo" should contain Tasseo

