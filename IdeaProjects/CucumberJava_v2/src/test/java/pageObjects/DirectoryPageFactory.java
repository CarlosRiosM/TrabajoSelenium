package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;


public class DirectoryPageFactory {
    final WebDriver driver;
    // Constructor, as every page needs a Webdriver to find elements

    public DirectoryPageFactory(WebDriver driver) {
        this.driver = driver;
    }

    // Locators for directory tab,search button	// Directory tab locator
        @FindBy(xpath = "//img[@src='/web/images/orangehrm-logo.png?v=1763650546848']")
        public WebElement viewDirectoryLinkLocator;

    // Search button locator
       @FindBy(xpath = "//input[@class='oxd-input oxd-input--active']")
       public WebElement searchButtonLocator;

       // Method that performs click on Directory tab
        public void viewDirectoryTabNavigation() {
            viewDirectoryLinkLocator.isDisplayed();
        }

        // Method that checks the search button presence
        public boolean verifySearchButtonPresense() {
            return searchButtonLocator.isDisplayed();
        }
}
