package utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class TestDriver {
    WebDriver driver;

    public TestDriver() {
        String path = "C:\\Users\\gabri\\OneDrive\\Documentos\\Gabriel\\1-Cursos\\1-EggGlobantQA\\0001-ProyectoIntegrador\\chrome-driver\\chromedriver.exe";
        System.setProperty("webDriver.chrome.driver", path);
        this.driver = new ChromeDriver();
        this.driver.manage().window().maximize();
    }

    public WebDriver getDriver() {
        return driver;
    }
}
