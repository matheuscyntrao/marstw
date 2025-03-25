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
    public void thereSouldBeAFieldCalled(String fieldId) {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 10, By.id(fieldId));
    }

    @And("the user search for flights {string} {string} {string}")
    public void theUserSelectDeparture(String departure, String returnDate, String promotionalCode) {
        ExplicityWait.waitUntilElementIsVisible(Driver.instance, 1, By.id("departing"));
        SearchTasks searchTasks = new SearchTasks();
        searchTasks.doSearch(departure, returnDate, promotionalCode);
    }


}
