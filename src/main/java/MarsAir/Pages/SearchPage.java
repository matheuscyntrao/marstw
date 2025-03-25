package MarsAir.Pages;

import Framework.Driver;
import Framework.Elements.Button;
import Framework.Elements.Select;
import Framework.Elements.TextField;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchPage {

    @FindBy(id = "departing")
    private WebElement selectDeparture;

    @FindBy(id = "returning")
    private WebElement selectReturn;

    @FindBy(id = "promotional_code")
    private WebElement textfieldPromotionalCode;

    @FindBy(xpath = "//*[@id=\"content\"]/form/dl[4]/dd/input")
    private WebElement buttonSearch;

    Select selDeparture, selReturn;
    TextField promocode;
    Button btnSearch;

    public SearchPage() {
        this.promocode = new TextField(textfieldPromotionalCode);
        this.selDeparture = new Select(selectDeparture);
        this.selReturn = new Select(selectReturn);
        this.btnSearch = new Button(buttonSearch);
    }

    public Select getSelDeparture() {
        return selDeparture;
    }

    public Select getSelReturn() {
        return selReturn;
    }

    public TextField getPromocode() {
        return promocode;
    }

    public Button getBtnSearch() {
        return btnSearch;
    }
}
