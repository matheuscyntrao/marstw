package MarsAir.Pages;

import Framework.Elements.Button;
import Framework.Elements.Select;
import Framework.Elements.TextField;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class SearchPage {

    @FindBy(id = "departing")
    private WebElement selectDeparture;

    @FindBy(id = "returning")
    private WebElement selectReturn;

    @FindBy(id = "promotional_code")
    private WebElement textfieldPromotionalCode;

    @FindBy(xpath = "//*[@id=\"content\"]/form/dl[4]/dd/input")
    private WebElement buttonSearch;

    public SearchPage() {

    }

    public Select getSelDeparture() {
        return new Select(selectDeparture);
    }

    public Select getSelReturn() {
        return new Select(selectReturn);
    }

    public TextField getPromocode() {
        return new TextField(textfieldPromotionalCode);
    }

    public Button getBtnSearch() {
        return new Button(buttonSearch);
    }
}
