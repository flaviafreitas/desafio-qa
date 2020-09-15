require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'byebug'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://automationpractice.com/index.php"
  config.default_max_wait_time = 30
end

#maximizar_tela
Before '@' do
  page.driver.browser.manage.window.maximize
end

#método de scroll
def scroll_to_element(elem)
  page.execute_script('arguments[0].scrollIntoView();', elem)
end