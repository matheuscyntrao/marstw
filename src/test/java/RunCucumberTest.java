import io.cucumber.junit.*;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "summary"},
        features = ".",
        glue={"."},
        tags= "@justthat"
)
public class RunCucumberTest {

}