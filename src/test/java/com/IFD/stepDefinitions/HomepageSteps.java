package com.IFD.stepDefinitions;

import java.util.List;

import org.openqa.selenium.WebDriver;
import com.IFD.Utilities.SeleniumUtility;
import com.IFD.webPages.HomePage;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class HomepageSteps extends SeleniumUtility {

    private WebDriver driver;
    private HomePage homePage;

    @Before
    public void setUp() {
        driver = setUp("chrome", "https://3a5ff726f3.nxcli.io/");
        homePage = new HomePage(driver);
    }

    @Given("I am on the homepage")
    public void i_am_on_the_homepage() {
        // Already handled in @Before setup
    }

    @Then("the following elements should be visible:")
    public void the_following_elements_should_be_visible(DataTable elementsTable) {
        List<String> elements = elementsTable.asList();
        for (String element : elements) {
            assert homePage.isElementVisible(element) : element + " is not visible.";
        }
    }

    @When("I click on the {string}")
    public void i_click_on_the_element(String elementName) {
        homePage.clickElement(elementName);
    }

    @Then("I should be redirected to the {string}")
    public void i_should_be_redirected_to_page(String pageName) {
        homePage.verifyRedirection(pageName);
    }

    @When("I click on the following navigation links:")
    public void i_click_on_navigation_links(DataTable navLinksTable) {
        List<List<String>> navLinks = navLinksTable.asLists();
        for (List<String> linkAndPage : navLinks) {
            String linkText = linkAndPage.get(0);
            String expectedPage = linkAndPage.get(1);
            homePage.clickElement(linkText);
            homePage.verifyRedirection(expectedPage);
        }
    }

    @When("I search for {string}")
    public void i_search_for_product(String searchQuery) {
        homePage.enterText("search bar", searchQuery);
        homePage.performSearch();
    }

    @Then("I should see relevant search results")
    public void i_should_see_relevant_search_results() {
        homePage.verifySearchResults();
    }

    @When("I click on a footer link")
    public void i_click_on_a_footer_link() {
        homePage.clickFooterLink();
    }

    @Then("I should be redirected to the appropriate page")
    public void i_should_be_redirected_to_the_appropriate_page() {
        homePage.verifyFooterRedirection();
    }

    @After
    public void tearDown() {
        cleanUp();
    }
}
