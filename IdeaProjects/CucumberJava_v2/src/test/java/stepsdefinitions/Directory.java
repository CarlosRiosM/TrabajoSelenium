package stepsdefinitions;

import java.time.Duration;

import io.cucumber.java.en.When;
import org.openqa.selenium.support.PageFactory;
import org.junit.Assert;
import common.BasePage;
import pageObjects.DirectoryPageFactory;
import io.cucumber.java.en.Then;

public class Directory extends BasePage {

    DirectoryPageFactory directoryPF = PageFactory.initElements(driver, DirectoryPageFactory.class);

    @When("user is on directory page")
    public void user_is_on_directory_page() {
        // Navigating to Directory Page/tab
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(7));
        directoryPF.viewDirectoryTabNavigation();
    }

    @Then("is search button displayed")
    public void is_search_button_displayed()  {
        // Verifying Search button is displayed or not
        boolean issearhButtonDisplayedTrue = directoryPF.verifySearchButtonPresense();
        Assert.assertTrue(issearhButtonDisplayedTrue);
    }
}
