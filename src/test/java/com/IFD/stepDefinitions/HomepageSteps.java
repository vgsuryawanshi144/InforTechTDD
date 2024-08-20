package com.IFD.stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import com.IFD.Utilities.SeleniumUtility;
import com.IFD.webPages.HomePage;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class HomepageSteps extends SeleniumUtility {

	private WebDriver driver;
	private HomePage homepage;

	@Before
	public void setUp() {
		driver = setUp("chrome", "https://3a5ff726f3.nxcli.io/");
	}

	@After
	public void tearDown() {
		cleanUp();
	}

	@Given("I am on the homepage")
	public void iAmOnTheHomepage() {
		driver.get("https://3a5ff726f3.nxcli.io/");
	}

	@Then("the site logo should be displayed")
	public void theSiteLogoShouldBeDisplayed() {
		Assert.assertTrue(homepage.siteLogo.isDisplayed(), "Site logo is not displayed");
	}

	@And("the main navigation menu should be displayed")
	public void theMainNavigationMenuShouldBeDisplayed() {
		Assert.assertTrue(homepage.mainNavMenu.isDisplayed(), "Main navigation menu is not displayed");
	}

	@And("the {string} link should be displayed in the navigation menu")
	public void theLinkShouldBeDisplayedInTheNavigationMenu(String linkText) {
		Assert.assertTrue(homepage.getNavLink(linkText).isDisplayed(),
				linkText + " link is not displayed in the navigation menu");
	}

	@And("the search bar should be displayed")
	public void theSearchBarShouldBeDisplayed() {
		Assert.assertTrue(homepage.searchBar.isDisplayed(), "Search bar is not displayed");
	}

	@And("the banner image should be displayed")
	public void theBannerImageShouldBeDisplayed() {
		Assert.assertTrue(homepage.bannerImage.isDisplayed(), "Banner image is not displayed");
	}

	@And("the {string} section should be displayed")
	public void theSectionShouldBeDisplayed(String sectionName) {
		Assert.assertTrue(homepage.getSection(sectionName).isDisplayed(), sectionName + " section is not displayed");
	}

	@And("the footer should be displayed")
	public void theFooterShouldBeDisplayed() {
		Assert.assertTrue(homepage.footer.isDisplayed(), "Footer is not displayed");
	}

	@And("the social media icons should be displayed in the footer")
	public void theSocialMediaIconsShouldBeDisplayedInTheFooter() {
		Assert.assertTrue(homepage.socialMediaIcons.size() > 0, "Social media icons are not displayed in the footer");
	}

	@And("the Subscribe to Newsletter field should be displayed")
	public void theSubscribeToNewsletterFieldShouldBeDisplayed() {
		Assert.assertTrue(homepage.newsletterField.isDisplayed(), "Subscribe to Newsletter field is not displayed");
	}

	@And("the Subscribe to Newsletter button should be displayed")
	public void theSubscribeToNewsletterButtonShouldBeDisplayed() {
		Assert.assertTrue(homepage.subscribeButton.isDisplayed(), "Subscribe to Newsletter button is not displayed");
	}
}