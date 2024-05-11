@webdriver
  Feature: WebDriver scenarios

    @webdriver1
    Scenario: Web driver methods navigate
      Given I navigate to "quote"
      When I print page details
      Then I navigate to "yahoo"
      And I print page details
      Then I go back, forward and refresh the page

      And I wait for 3 sec


    @webdriver2
    Scenario: Quote - email field behaviour verification
      Given I navigate to "quote"
      When I type "abcabc" into email field
      And I submit the form
      Then email error is displayed
      And error message "Please enter a valid email address." is displayed
      When I clear email field
      Then email error should be displayed "This field is required."
      When I type "abc@abc.com" into email field
      Then error message should not be displayed
      And I wait for 2 sec
      And I resize window to "1" and "1"

    @webdriver3
    Scenario Outline: Quote - email field behaviour verification - Outline
      Given I navigate to "quote"
      When I type <email> into email field
      And I submit the form
      And error message <text> is displayed
      Examples:
      | email    | text                                  |
      | "abcabc" | "Please enter a valid email address." |
      | "abc@ab@c" | "Please enter a valid email address." |
      | "abc@a.com." | "Please enter a valid email address." |
      | "" | "This field is required." |


