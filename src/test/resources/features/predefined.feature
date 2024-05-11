@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @excite
  Scenario: Steps for Excite
    Given I open url "https://www.excite.com/"
    And I wait for 3 sec
#    Then I should see page title does not contain "excite"
#    Then I should see page title as "empty"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    When I switch to new window
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "Behavior Driven Development"
    And I switch to first window
    And I wait for 2 sec

  @duckduckgo
  Scenario: Steps of duckduckgo
    Given I open url "https://duckduckgo.com/"
    And I wait for 2 sec
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='searchbox_input']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='react-layout']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @swisscows
  Scenario: Steps for swisscows
    Given I open url "https://swisscows.com/en"
    And I wait for 2 sec
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @searchencrypt
  Scenario: Steps for searchencrypt
    Given I open url "https://www.searchencrypt.com/"
    And I wait for 2 sec
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @startpage
  Scenario: Steps for startpage
    Given I open url "https://www.startpage.com/"
    And I wait for 2 sec
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element using JavaScript with xpath "//form[@id='search']/div/button[@id='search-btn']"
    Then I wait for element with xpath "//div[@class='layout-web layout-web--']" to be present
    Then element with xpath "//div[@class='layout-web layout-web--']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @ecosia
  Scenario: Steps for ecosia
    Given I open url "https://www.ecosia.org/"
    And I wait for 2 sec
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//main[@id='main']" to be present
    Then element with xpath "//main[@id='main']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @yandex
  Scenario: Steps for yandex
    Given I open url "https://yandex.com/"
    And I wait for 2 sec
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//main[@class='main serp i-bem']" to be present
    Then element with xpath "//main[@class='main serp i-bem']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @wiki
  Scenario: Steps for wiki
    Given I open url "https://www.wiki.com/"
    And I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "//input[@name='btnG']"
    Then I wait for element with xpath "//button[@id='proceed-button']" to be present
    And I click on element using JavaScript with xpath "//button[@id='proceed-button']"
    And I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then element with xpath "//div[@id='inner-sbox']" should contain text "Behavior Driven Development"
    And I switch to default content
    And I wait for 2 sec

  @givewater
  Scenario: Steps for givewater
    Given I open url "https://www.givewater.com/"
    And I wait for 2 sec
    And I click on element using JavaScript with xpath "//button[@type='button'][@class='pum-close popmake-close']"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='site-search']"
    And I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then element with xpath "//div[@class='layout']" should contain text "Behavior Driven Development"
    And I wait for 2 sec

  @dogpile
  Scenario: dogpile
    Given I open url "https://www.dogpile.com/"
    And I wait for 2 sec
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then element with xpath "//div[@class='layout__mainline']" should contain text "Behavior Driven Development"
    And I wait for 2 sec





    
  






    
    


    
    