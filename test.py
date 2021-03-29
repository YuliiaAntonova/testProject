def click_filters(self):
    return self.find_element(CDRLocators.LOCATOR_FILTERS).clock()


def select_filters_checkbox(self):
     search_checkbox_company = self.find_element(CDRLocators.LOCATOR_CHECKBOX_COMPANY_REGISTRATION)
     search_checkbox_company.click()
     search_checkbox_website = self.find_element(CDRLocators.LOCATOR_CHECKBOX_WEBSITE)
     search_checkbox_website.click()
     search_checkbox_email = self.find_element(CDRLocators.LOCATOR_CHECKBOX_EMAIL)
     search_checkbox_email.click()
     search_checkbox_phone = self.find_element(CDRLocators.LOCATOR_CHECKBOX_PHONE)
     search_checkbox_phone.click()
     search_checkbox_address = self.find_element(CDRLocators.LOCATOR_CHECKBOX_ADDRESS)
     search_checkbox_address.click()
     return search_checkbox_address


def click_button_search(self):
    return self.find_element(CDRLocators.LOCATOR_BUTTON_SEARCH).click()


@allure.severity(allure.severity_level.CRITICAL)
def test_filter_checkbox(browser):
    panel_cdr_page = CDRPage(browser)
    panel_cdr_page.go_to_site2()
    panel_cdr_page.click_filters()
    panel_cdr_page.select_filters_checkbox()
    panel_cdr_page.click_button_search()
    time.sleep(5)
# ТОДО добав про проверку
LOCATOR_FILTERS = (By.ID, 'filtersHeading')
LOCATOR_CHECKBOX_COMPANY_REGISTRATION = (By.ID, 'hasRegnum')
LOCATOR_CHECKBOX_WEBSITE = (By.ID, 'hasWebsite')
LOCATOR_CHECKBOX_EMAIL = (By.ID, 'hasEmail')
LOCATOR_CHECKBOX_PHONE = (By.ID, 'hasPhone')
LOCATOR_CHECKBOX_ADDRESS = (By.ID, 'hasAddress')
LOCATOR_BUTTON_SEARCH = (By.XPATH, " // button[text() ='Search']")
