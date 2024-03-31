package cucumber.test;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(tags = "", features = "src/test/resources/cucumber.test",
        glue = "cucumber.test",
        plugin = {})

public class WikipediaRunner extends AbstractTestNGCucumberTests{
}
