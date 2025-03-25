package MarsAir.Tasks;

import Helpers.ExplicityWait;
import MarsAir.Pages.SearchPage;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class SearchTasks {

    SearchPage searchPage;

    WebDriver driver;

    public SearchTasks(WebDriver driver) {
        this.driver = driver;
        this.searchPage = new SearchPage(this.driver);
    }

    public void doSearch(String departure, String returnDate, String promotionalCode) {
        this.searchPage.getSelDeparture().select(departure);
        this.searchPage.getSelReturn().select(returnDate);
        this.searchPage.getTxtPromotionalCode().sendKeys(promotionalCode);
        this.searchPage.getBtnSearch().click();
    }

}
