package StepDefs;

import Framework.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class _contextSteps {

    @Before
    public void before() {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--start-maximized");
        Driver.instance = new ChromeDriver(options);
    }

    @Given("the user is accessing the home page")
    public void theUserIsAccessingTheHomePage() {
        Driver.instance.get("https://marsair.recruiting.thoughtworks.net/Matheusdesouza");
    }

    @After()
    public void tearDown() {
        if(!(Driver.instance == null))
        {
            Driver.instance.quit();
        }
    }

}
