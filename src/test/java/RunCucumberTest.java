import io.cucumber.junit.*;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "summary", "com.epam.reportportal.cucumber.ScenarioReporter"},
        features = ".",
        glue={"."},
        tags= "@teste"
)
public class RunCucumberTest {

}