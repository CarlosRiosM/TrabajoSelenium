package stepsdefinitions;

import java.time.Duration;

import common.BasePage;
import org.openqa.selenium.support.PageFactory;
import pageObjects.HRMLoginPageFactory;
import io.cucumber.java.en.Given;

public class HRMLogin extends BasePage {
    HRMLoginPageFactory hrmLoginPF = PageFactory.initElements(driver, HRMLoginPageFactory.class);

    @Given("^user enters (.*) and (.*)$")
    public void user_enters_username_and_password(String username, String password) throws Exception {
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(7));
        hrmLoginPF.loginHRM(username,password);
        Thread.sleep(3000);
    }
}
