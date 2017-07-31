require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
# driver.get 'https://www.google.co.uk'

# search_bar = driver.find_element :name => 'q'
# search_bar.send_keys "game of thrones season 7"
# search_bar.submit


wait = Selenium::WebDriver::Wait.new(:timeout => 30)


driver.get 'https://www.google.co.uk/'

login = driver.find_element :id => 'gb_70'
login.click

select_email = driver.find_element :class => 'wpW1cb'
select_email.click

click_next = driver.find_element :class => 'RveJvd snByac'
click_next.click


wait.until {sect_email.click}

