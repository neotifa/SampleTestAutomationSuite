Feature: test feature

  Overview of the storycard that this feature is testing.
  All text here will not be used for anything other than reference.

  Scenario: test_name_1
    Given there are 2 cukes
    Then the 2 cukes are less than 5

  Scenario Outline: test_name_2
    Given there are <numCukes> cukes
    Then the <numCukes> cukes are less than <maxCukes>

    Examples:
    | numCukes | maxCukes |
    # should pass
    | 2        | 5        |
    | 0        | 1        |
    # should fail
    | 5        | 5        |
    | 6        | 5        |