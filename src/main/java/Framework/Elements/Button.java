package Framework.Elements;

import org.openqa.selenium.WebElement;

public class Button {

    WebElement element;

    public Button(WebElement el) {
        this.element = el;
    }

    public void click() {
        this.element.click();
    }

}
