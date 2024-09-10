package com.IFD.webPages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.IFD.Utilities.SeleniumUtility;

public class HomePage extends SeleniumUtility {

	@FindBy(css = "img.site-logo")
	private WebElement siteLogo;

	@FindBy(css = "nav.main-navigation")
	private WebElement mainNavMenu;

	@FindBy(css = "input.search-bar")
	private WebElement searchBar;

	@FindBy(css = "div.banner img")
	private WebElement bannerImage;

	@FindBy(css = "footer")
	private WebElement footer;

	@FindBy(css = "footer .social-media-icons a")
	private List<WebElement> socialMediaIcons;

	@FindBy(css = "input#newsletter")
	private WebElement newsletterField;

	@FindBy(css = "button#subscribe")
	private WebElement subscribeButton;

	@FindBy(linkText = "Home")
	private WebElement homeLink;

	@FindBy(linkText = "Products")
	private WebElement productsLink;

	@FindBy(linkText = "About Us")
	private WebElement aboutUsLink;

	@FindBy(linkText = "Contact Us")
	private WebElement contactUsLink;

	@FindBy(xpath = "//section[contains(@class, 'featured-products')]")
	private WebElement featuredProductsSection;

	@FindBy(xpath = "//section[contains(@class, 'special-offers')]")
	private WebElement specialOffersSection;

	@FindBy(xpath = "//section[contains(@class, 'latest-news')]")
	private WebElement latestNewsSection;

	public HomePage(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	public boolean isElementVisible(String elementName) {
		switch (elementName) {
		case "site logo":
			return isElementExist(siteLogo);
		case "main navigation menu":
			return isElementExist(mainNavMenu);
		case "search bar":
			return isElementExist(searchBar);
		case "banner image":
			return isElementExist(bannerImage);
		case "Featured Products section":
			return isElementExist(featuredProductsSection);
		case "Special Offers section":
			return isElementExist(specialOffersSection);
		case "footer":
			return isElementExist(footer);
		case "social media icons":
			return !socialMediaIcons.isEmpty();
		case "Subscribe to Newsletter field":
			return isElementExist(newsletterField);
		case "Subscribe to Newsletter button":
			return isElementExist(subscribeButton);
		default:
			throw new IllegalArgumentException("Invalid element name: " + elementName);
		}
	}

	public void clickElement(String elementName) {
		switch (elementName) {
		case "site logo":
			clickOnElement(siteLogo);
			break;
		case "Home":
			clickOnElement(homeLink);
			break;
		case "Products":
			clickOnElement(productsLink);
			break;
		case "About Us":
			clickOnElement(aboutUsLink);
			break;
		case "Contact Us":
			clickOnElement(contactUsLink);
			break;
		default:
			throw new IllegalArgumentException("Invalid element name: " + elementName);
		}
	}

	public void enterText(String elementName, String text) {
		if ("search bar".equals(elementName)) {
			typeInput(searchBar, text);
		} else {
			throw new IllegalArgumentException("Invalid element name: " + elementName);
		}
	}

	public void performSearch() {
		// Trigger search; implement this method if needed
	}

	public void verifySearchResults() {
		// Implement search results verification
	}

	public void clickFooterLink() {
		if (!socialMediaIcons.isEmpty()) {
			clickOnElement(socialMediaIcons.get(0)); // Click the first social media icon as an example
		} else {
			throw new RuntimeException("No footer links available to click.");
		}
	}

	public void verifyRedirection(String pageName) {
		switch (pageName) {
		case "homepage":
			// Implement redirection verification for homepage
			break;
		case "products page":
			// Implement redirection verification for products page
			break;
		case "about us page":
			// Implement redirection verification for about us page
			break;
		case "contact us page":
			// Implement redirection verification for contact us page
			break;
		default:
			throw new IllegalArgumentException("Invalid page name: " + pageName);
		}
	}

	public void verifyFooterRedirection() {
		// Implement verification for redirection from the footer
	}
}
