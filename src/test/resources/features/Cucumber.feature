@cucumber
Feature: Practice with cucumber scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"

  @cucumber1
  Scenario: TC1 Responsive UI behaviour
    When I resize window to 1680 and 1050
    Then element with xpath "//b[@id='location']" should be displayed
    When I resize window to 1024 and 768
    Then element with xpath "//b[@id='location']" should be displayed
    When I resize window to 375 and 668
    Then element with xpath "//b[@id='location']" should not be displayed
    And I wait for 1 sec


  Scenario: TC2 Username behavior
    When I type "A" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I clear element with xpath "//input[@name='username']"
    Then I type "AB" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='username-error']" should not be displayed
    Then I clear element with xpath "//input[@name='username']"
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@id='nameDialog']" to be present
    Then I type "Viktor" into element with xpath "//input[@id='firstName']"
    Then I type "Sku" into element with xpath "//input[@id='lastName']"
    Then I type "dex" into element with xpath "//input[@id='middleName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I type "valid@abc.com" into element with xpath "//input[@name='email']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I type "dex" into element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed


  Scenario: TC3 Validate email
    When I type "valid@abc.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='email-error']" should not be present
    Then I clear element with xpath "//input[@name='email']"
    When I type "Invali" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I clear element with xpath "//input[@name='email']"
    When I type "invali@com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='email-error']" should be displayed

  Scenario: TC3 Validate email (click Submit)
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@id='nameDialog']" to be present
    Then I type "Viktor" into element with xpath "//input[@id='firstName']"
    Then I type "Sku" into element with xpath "//input[@id='lastName']"
    Then I type "dex" into element with xpath "//input[@id='middleName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I type "dex" into element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed

  Scenario: TC4 Validate password behavior / confirm password
    When element with xpath "//input[@id='confirmPassword']" should be disabled
    Then I type "1234" into element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='password-error'][contains(text(),'5 characters')]" should not be present
    Then I clear element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='password-error'][contains(text(),'5 characters')]" should not be present
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    Then I type "1234" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='confirmPassword-error'][contains(text(),'5 characters')]" should be displayed
    Then I click on element using JavaScript with xpath "//input[@id='confirmPassword']"
    Then I clear element with xpath "//input[@id='confirmPassword']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error'][contains(text(),'5 characters')]" should not be present


  Scenario: TC4 Validate password behavior / confirm password (click Submit)
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@id='nameDialog']" to be present
    Then I type "Viktor" into element with xpath "//input[@id='firstName']"
    Then I type "Sku" into element with xpath "//input[@id='lastName']"
    Then I type "dex" into element with xpath "//input[@id='middleName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I type "valid@abc.com" into element with xpath "//input[@name='email']"
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then I type "dex" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[contains(text(),'is required.')]" should be displayed



  Scenario: TC5 Name field behaviour
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@id='nameDialog']" to be present
    Then I type "Viktor" into element with xpath "//input[@id='firstName']"
    Then I type "Sku" into element with xpath "//input[@id='lastName']"
    Then I type "dex" into element with xpath "//input[@id='middleName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Viktor dex Sku"
    
  Scenario: TC6 Validate that Accepting Privacy Policy is required to submit the form
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@id='nameDialog']" to be present
    Then I type "Viktor" into element with xpath "//input[@id='firstName']"
    Then I type "Sku" into element with xpath "//input[@id='lastName']"
    Then I type "dex" into element with xpath "//input[@id='middleName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I type "valid@abc.com" into element with xpath "//input[@name='email']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then I type "dex" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed

  Scenario: TC7 Try entering the following non-required fields
    When I type "6462171717" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//option[@value='Ukraine']"
    Then I click on element with xpath "//input[@value='male']"
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I type "100 Main street" into element with xpath "//textarea[@id='address']"
    Then I click on element with xpath "//option[@value='Toyota']"
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    Then I type "08/28/1986" into element with xpath "//input[@id='dateOfBirth']"
 
  Scenario: Upload documents
    When I type "D:\QA PORTNOV\Internal Internship\Automation\Cucumber.docx" into element with xpath "//input[@id='attachment']"
    And I wait for 3 sec







   
