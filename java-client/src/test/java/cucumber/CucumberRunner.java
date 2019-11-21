package cucumber;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty", "html:reports/cucumber-html-report", "json:reports/cucumber-report.json"},
        features = "java-client/src/test/java/features",
        glue = "io.swagger.client.api",
        monochrome = true,
        strict = true)

public class CucumberRunner {

}
