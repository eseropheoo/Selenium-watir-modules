require 'watir'
require 'selenium-webdriver'


class Bbc
	def initialize 
		@browser = Watir::Browser.new :chrome
		@homepage = 'http://www.bbc.co.uk/news'

	end

	def go_to_home
		@browser.goto @homepage
	end



	def sign_in
		sign_in = @browser.link text: 'Sign in'
		sign_in.click
	end

	def user_pass
		@username = @browser.text_field id: 'username-input'
		@password = @browser.text_field id: 'password-input'
		@username.set 'ese4ever@hotmail.co.uk'
		@password.set 'dragonball12'
	end

	def sign_button
		sign_in_button = @browser.button id: 'submit-button'
		
		
	end


end

x = Bbc.new
x.go_to_home
x.sign_in

x.user_pass
x.sign_button.click

b = Watir::Browser.start 'http://www.bbc.co.uk/news'
Watir::Wait.until { b.text.include? 'Thank you' }


