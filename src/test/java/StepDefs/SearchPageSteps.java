package StepDefs;

import Framework.Driver;
import Helpers.ExplicityWait;
import MarsAir.Tasks.SearchTasks;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

public class SearchPageSteps {

    @When("the page load completely")
    public void thePageLoadCompletely() {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.id("app"));
    }

    @And("the user select {string}")
    public void theUserSelect(String arg0) {
    }


    @Then("there sould be a field called {string}")
    public void thereSouldBeAFieldCalled(String fieldLabel) {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.linkText(fieldLabel));
    }

    @And("the user search for flights {string} {string} {string}")
    public void theUserSelectDeparture(String departure, String returnDate, String promotionalCode) {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.id("departure"));
        SearchTasks searchTasks = new SearchTasks(Driver.instance);
        searchTasks.doSearch(departure, returnDate, promotionalCode);
    }

    @When("the user select trips for the next two years")
    public void theUserSelectTripsForTheNextTwoYears() {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.id("departure"));
        SearchTasks searchTasks = new SearchTasks(Driver.instance);
        searchTasks.doSearch("July", "December (two years from now)", "");
    }

    @Then("the user should be able so search")
    public void theUserShouldBeAbleSoSearch() {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.partialLinkText("Back"));
        Assert.assertTrue(Driver.instance.findElement(By.partialLinkText("Back")).isDisplayed());
    }
}
