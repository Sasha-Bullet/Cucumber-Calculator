Feature: Arithmetic Operations
  As a user of the calculator
  I would like access to basic arithmetic operations
  So that I can perform simple calculations

  Scenario: Add numbers
    Given The calculator is open  
     When I calculate 1 + 2
     Then the result should equal 3

  Scenario: Should use add operator by default
    Given The calculator is open  
     When I enter first value of 10
      And I enter second value of 7
      And I click Go
     Then the result should equal 17

  Scenario: Subtract numbers
    Given The calculator is open  
     When I calculate 10 - 7
     Then the result should equal 3

  Scenario: Multiply numbers
    Given The calculator is open
     When I calculate 9 * 9
     Then the result should equal 81

  Scenario: Divide numbers
    Given The calculator is open
     When I calculate 10 / 2
     Then the result should equal 5

  Scenario: Modulo numbers
    Given The calculator is open
     When I calculate 85 % 15
     Then the result should equal 10

  Scenario: Negative test
      Given The calculator is open
     When I calculate 10 + A
     Then the result should equal NaN

  Scenario: Multiply numbers
    Given The calculator is open
     When I calculate 10 * 0
     Then the result should equal 0

  Scenario: Testing history
    Given The calculator is open
    When I calculate 5 - 12
    Then the result of first row in history should equal -7