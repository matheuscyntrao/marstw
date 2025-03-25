package Framework.Elements;

import org.openqa.selenium.WebElement;

public class Select {

    org.openqa.selenium.support.ui.Select element;

    public Select(WebElement el) {
        this.element = new org.openqa.selenium.support.ui.Select(el);
    }

    public void select(String option) {
       this.element.selectByValue(option);
    }

}
