package StepDefs;

import Framework.Driver;
import Helpers.ExplicityWait;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

public class SearchPageResultsSteps {

    @Then("the message must be {string}")
    public void theMessageMustBe(String message) {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.id("content"));
        Assert.assertEquals(message, Driver.instance.findElement(By.id("content")).findElement(By.tagName("p")).getText());
    }

}
