package MarsAir.Pages;

import Framework.Elements.Button;
import Framework.Elements.Select;
import Framework.Elements.TextField;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchPage {

    WebDriver driver;

    @FindBy(id = "departure")
    WebElement selectDeparture;

    @FindBy(id = "return")
    WebElement selectReturn;

    @FindBy(id = "promotional_code")
    WebElement textfieldPromotionalCode;

    @FindBy(xpath = "//*[@id=\"content\"]/form/dl[4]/dd/input")
    WebElement buttonSearch;

    Select selDeparture, selReturn;
    TextField txtPromotionalCode;
    Button btnSearch;

    public SearchPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(this.driver, SearchPage.class);
        this.selDeparture = new Select(selectDeparture);
        this.selReturn = new Select(selectReturn);
        this.txtPromotionalCode = new TextField(textfieldPromotionalCode);
        this.btnSearch = new Button(buttonSearch);
    }

    public Select getSelDeparture() {
        return selDeparture;
    }

    public Select getSelReturn() {
        return selReturn;
    }

    public TextField getTxtPromotionalCode() {
        return txtPromotionalCode;
    }

    public Button getBtnSearch() {
        return btnSearch;
    }

}
