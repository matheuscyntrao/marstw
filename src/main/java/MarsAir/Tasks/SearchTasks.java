package MarsAir.Tasks;

import Framework.Driver;
import MarsAir.Pages.SearchPage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class SearchTasks {

    SearchPage searchPage;

    public SearchTasks() {
        this.searchPage = PageFactory.initElements(Driver.instance, SearchPage.class);
    }

    public void doSearch(String departure, String returnDate, String promotionalCode) {
        this.searchPage.getSelDeparture().select(departure);
        this.searchPage.getSelReturn().select(returnDate);
        this.searchPage.getBtnSearch().click();
    }

}
