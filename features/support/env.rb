require 'selenium-webdriver'
$driver = Selenium::WebDriver.for :chrome
at_exit do
    $driver.quit
end