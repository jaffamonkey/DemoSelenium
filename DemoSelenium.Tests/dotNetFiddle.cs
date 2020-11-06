using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;

namespace DemoSelenium.Tests
{
    public class CustomerRegisterPage
    {
        private readonly IWebDriver _driver;

        public CustomerRegisterPage(IWebDriver driver)
        {
            _driver = driver;
        }

        public string Title => _driver.Title;
        public string Source => _driver.PageSource;
        public string RunButton => _driver.FindElement(By.Id("run-button"));
        public string SaveButton => _driver.FindElement(By.ClassName("save-button"));
        public string ShareButton => _driver.FindElement(By.Id("Share"));
        public string ShareButton => _driver.FindElement(By.Id("ShareLink"));
        public string NewPackageField => _driver.FindElement(By.ClassName("new-package"));
        public string Username => _driver.FindElement(By.Id("Email"));
        public string Password => _driver.FindElement(By.Id("Password"));
        public string HideShowSideOptions => _driver.FindElement(By.ClassName("btn-sidebar-toggle"));
        public string GettingStartedButton => _driver.FindElement(By.ClassName("btn-default"));
        public string RunOutputValidator => _driver.FindElement(By.Id("output")).Text;
        public string PackageIncludedTick => _driver.FindElement(By.XPath("//*[@id=\"menu\"]/li[1]/ul/li[1]/a/i"));
        
        private const string URI = "https://dotnetfiddle.net";

        private IWebElement UsernameElement => _driver.FindElement(By.Id("username"));
        private IWebElement PasswordElement => _driver.FindElement(By.Id("password"));
        private IWebElement DobElement => _driver.FindElement(By.Id("dob"));
        private IWebElement PhoneElement => _driver.FindElement(By.Id("phone"));
        private IWebElement Create => _driver.FindElement(By.Id("create"));

        public void Navigate() => _driver.Navigate().GoToUrl(URI);


        public void UsernameInput(string username) => UsernameElement.SendKeys(username);
        public void PasswordInput(string password) => PasswordElement.SendKeys(password);
        public void DobInput(DateTime dateTime) => DobElement.SendKeys(dateTime.ToString());
        public void PhoneInput(string phone) => PhoneElement.SendKeys(phone);
        public void Submit() => Create.Click();

    }
}
