Feature: testing osu sites and stuff

  Scenario Outline: Navigate to osu.edu
    Given the user opens a browser
    And the user navigates to <url>
    Then the user validates the url is <url>

    Examples:
    | url                  |
    | https://www.osu.edu/ |

    Scenario: carmen
      Given the user opens a browser
      And the user goes to Carmen
      When the user logs into their account
      And clicks the link for this course
      And enters the chatroom
      Then the user is able to post a test message
        | #### Automation Test ####             |
        | #### Hello, world! ####               |
        | #### Ruby Gray is totes the best #### |