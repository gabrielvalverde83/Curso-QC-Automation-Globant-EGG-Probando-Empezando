package utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class MyDriver {
    private WebDriver driver;   // instancio el driver

    public MyDriver(String browser){
        if ("firefox".equals(browser)){
            driver = new FirefoxDriver();
        } else{
            String path = System.getProperty("user.dir");
            System.out.println(path);
            System.setProperty("webdriver.chrome.driver",path+"\\drivers\\chromedriver.exe");   //Esta anotación sirve para arrancar desde la raíz del proyecto, asi si otra persona lo tiene en otra raíz, que es lo mas probable, le va a funcionar
            driver = new ChromeDriver();
        }
    }

    public WebDriver getDriver() {
        return this.driver;
    }
}
