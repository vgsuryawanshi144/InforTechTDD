package com.IFD.webPages;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import com.IFD.Utilities.SeleniumUtility;

public class HomePage extends SeleniumUtility {
	private WebDriver driver;

	@FindBy(css = "img.site-logo")
	public WebElement siteLogo;

	@FindBy(css = "nav.main-navigation")
	public WebElement mainNavMenu;

	@FindBy(css = "input.search-bar")
	public WebElement searchBar;

	@FindBy(css = "div.banner img")
	public WebElement bannerImage;

	@FindBy(css = "footer")
	public WebElement footer;

	@FindBy(css = "footer .social-media-icons a")
	public List<WebElement> socialMediaIcons;

	@FindBy(css = "input#newsletter")
	public WebElement newsletterField;

	@FindBy(css = "button#subscribe")
	public WebElement subscribeButton;

	@FindBy(linkText = "Home")
	public WebElement homeLink;

	@FindBy(linkText = "Products")
	public WebElement productsLink;

	@FindBy(linkText = "About Us")
	public WebElement aboutUsLink;

	@FindBy(linkText = "Contact Us")
	public WebElement contactUsLink;

	@FindBy(xpath = "//section[contains(@class, 'featured-products')]")
	public WebElement featuredProductsSection;

	@FindBy(xpath = "//section[contains(@class, 'special-offers')]")
	public WebElement specialOffersSection;

	@FindBy(xpath = "//section[contains(@class, 'latest-news')]")
	public WebElement latestNewsSection;

	public WebElement getSiteLogo() {
		return siteLogo;
	}

	public void setSiteLogo(WebElement siteLogo) {
		this.siteLogo = siteLogo;
	}

	public WebElement getMainNavMenu() {
		return mainNavMenu;
	}

	public void setMainNavMenu(WebElement mainNavMenu) {
		this.mainNavMenu = mainNavMenu;
	}

	public WebElement getSearchBar() {
		return searchBar;
	}

	public void setSearchBar(WebElement searchBar) {
		this.searchBar = searchBar;
	}

	public WebElement getBannerImage() {
		return bannerImage;
	}

	public void setBannerImage(WebElement bannerImage) {
		this.bannerImage = bannerImage;
	}

	public WebElement getFooter() {
		return footer;
	}

	public void setFooter(WebElement footer) {
		this.footer = footer;
	}

	public List<WebElement> getSocialMediaIcons() {
		return socialMediaIcons;
	}

	public void setSocialMediaIcons(List<WebElement> socialMediaIcons) {
		this.socialMediaIcons = socialMediaIcons;
	}

	public WebElement getNewsletterField() {
		return newsletterField;
	}

	public void setNewsletterField(WebElement newsletterField) {
		this.newsletterField = newsletterField;
	}

	public WebElement getSubscribeButton() {
		return subscribeButton;
	}

	public void setSubscribeButton(WebElement subscribeButton) {
		this.subscribeButton = subscribeButton;
	}

	public WebElement getHomeLink() {
		return homeLink;
	}

	public void setHomeLink(WebElement homeLink) {
		this.homeLink = homeLink;
	}

	public WebElement getProductsLink() {
		return productsLink;
	}

	public void setProductsLink(WebElement productsLink) {
		this.productsLink = productsLink;
	}

	public WebElement getAboutUsLink() {
		return aboutUsLink;
	}

	public void setAboutUsLink(WebElement aboutUsLink) {
		this.aboutUsLink = aboutUsLink;
	}

	public WebElement getContactUsLink() {
		return contactUsLink;
	}

	public void setContactUsLink(WebElement contactUsLink) {
		this.contactUsLink = contactUsLink;
	}

	public WebElement getFeaturedProductsSection() {
		return featuredProductsSection;
	}

	public void setFeaturedProductsSection(WebElement featuredProductsSection) {
		this.featuredProductsSection = featuredProductsSection;
	}

	public WebElement getSpecialOffersSection() {
		return specialOffersSection;
	}

	public void setSpecialOffersSection(WebElement specialOffersSection) {
		this.specialOffersSection = specialOffersSection;
	}

	public WebElement getLatestNewsSection() {
		return latestNewsSection;
	}

	public void setLatestNewsSection(WebElement latestNewsSection) {
		this.latestNewsSection = latestNewsSection;
	}

	public WebElement getNavLink(String linkText) {
		switch (linkText) {
		case "Home":
			return homeLink;
		case "Products":
			return productsLink;
		case "About Us":
			return aboutUsLink;
		case "Contact Us":
			return contactUsLink;
		default:
			throw new IllegalArgumentException("Invalid link text: " + linkText);
		}
	}

	public WebElement getSection(String sectionName) {
		switch (sectionName) {
		case "Featured Products":
			return featuredProductsSection;
		case "Special Offers":
			return specialOffersSection;
		case "Latest News":
			return latestNewsSection;
		default:
			throw new IllegalArgumentException("Invalid section name: " + sectionName);
		}
	}
}
