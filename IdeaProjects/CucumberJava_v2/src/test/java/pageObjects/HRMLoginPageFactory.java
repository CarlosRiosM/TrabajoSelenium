package pageObjects;

import common.Hooks;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HRMLoginPageFactory {

    final WebDriver driver;	// Constructor, as every page needs a Webdriver to find elements
    public HRMLoginPageFactory(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }
    // Locators for User Name, Password and  for Login button	//
    // UserName
    @FindBy(xpath = "//input[@name='username']")
    public WebElement user;

    // Password
    @FindBy(xpath = "//input[@name='password']")
    public WebElement password;

    // Login button
    @FindBy(xpath = "//button[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']")
    public WebElement loginButtonLocator;
    // Method that performs Login action using the web elements

     public void loginHRM(String uName, String pwd) {
         Hooks.esperarXSegundos(3);
         user.sendKeys(uName);
         Hooks.esperarXSegundos(3);
         password.sendKeys(pwd);
         Hooks.esperarXSegundos(3);
         loginButtonLocator.click();
     }
}
