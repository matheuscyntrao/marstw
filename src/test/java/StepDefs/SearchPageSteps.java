package StepDefs;

import Framework.Driver;
import Helpers.ExplicityWait;
import MarsAir.Tasks.SearchTasks;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
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


}
