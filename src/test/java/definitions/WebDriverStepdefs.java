package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import java.util.List;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static support.TestContext.getDriver;


public class WebDriverStepdefs {
    @Given("I navigate to {string}")
    public void iNavigateTo(String url) {
        if (url.equals("google")) {
            getDriver().get("https://www.google.com/");
        } else if (url.equals("yahoo")) {
            getDriver().get("https://www.yahoo.com/");
        } else if (url.equals("quote")) {
            getDriver().get("https://skryabin.com/market/quote.html");
        } else {
            System.out.println("This website " + url + " is not supported");
        }
    }


    @When("I print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }

    @Then("I go back, forward and refresh the page")
    public void iGoBackForwardAndRefreshThePage() {
        getDriver().navigate().back();
        getDriver().navigate().forward();
        getDriver().navigate().refresh();
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(email);

    }

    @And("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("email error is displayed")
    public void emailErrorIsDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isTrue();
    }


    @And("error message {string} is displayed")
    public void errorMessageIsDisplayed(String text) {
        String actualtext = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();

        assertThat(actualtext.equals(text)).isTrue();
    }

    @When("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
    }

    @Then("email error should be displayed {string}")
    public void emailErrorShouldBeDisplayed(String text) {
        String actualtext = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();

        assertThat(actualtext.equals(text)).isTrue();
    }

    @Then("error message should not be displayed")
    public void errorMessageShouldNotBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isFalse();
    }
}