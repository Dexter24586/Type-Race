@Gonki
Feature: Gonki web app
  Scenario: : Gonki autofill
    Given I open url "https://play.typeracer.com/"
    Then I should see page title as "TypeRacer - Play Typing Games and Race Friends"
    And I wait for 2 sec
    And I wait for element with xpath "//a[@class='gwt-Anchor prompt-button bkgnd-blue']" to be present
    Then I click on element with xpath "//a[@class='gwt-Anchor prompt-button bkgnd-blue']"
    And I wait for 5 sec
    Then I wait for element with xpath "//input[@type='text'][@class='txtInput']" to be present
#    Then I switch to iframe with xpath "//iframe[@name='__tcfapiLocator']"
    Then I copy text from xpath "<string>" and past it in "<string>"
    And I wait for 20 sec


    Scenario: : Gonki autofill2
    Given I open url "https://play.typeracer.com/"
    Then I should see page title as "TypeRacer - Play Typing Games and Race Friends"
    And I wait for 2 sec
    And I wait for element with xpath "//a[@class='gwt-Anchor prompt-button bkgnd-green']" to be present
    Then I click on element with xpath "//a[@class='gwt-Anchor prompt-button bkgnd-green']"
    And I wait for 5 sec
    Then I wait for element with xpath "//input[@type='text'][@class='txtInput']" to be present
#    Then I switch to iframe with xpath "//iframe[@name='__tcfapiLocator']"
    Then I copy text from xpath "<string>" and past it in "<string>"
    And I wait for 20 sec




