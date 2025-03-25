package Framework.Elements;

import org.openqa.selenium.WebElement;

public class TextField {

    WebElement element;

    public TextField(WebElement el) {
        this.element = el;
    }

    public void sendKeys(String keys) {
        this.element.sendKeys(keys);
    }

}
