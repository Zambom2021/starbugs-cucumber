require 'capybara/cucumber'
require 'selenium-webdriver'

browser = ENV['BROWSER'] || 'chrome'

Capybara.configure do |config|
  config.default_max_wait_time = 5
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  if ENV['CI']
    options.add_argument('--headless=new')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--window-size=1920,1080')
  else
    options.add_argument('--start-maximized')
  end

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.default_driver = browser.to_sym
