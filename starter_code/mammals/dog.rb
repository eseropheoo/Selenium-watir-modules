require_relative '../animal'
require_relative '../animal classes/mammals'

# We will now create a template for a dog and a dog will inherit the traits from the animal class
class Dog < Animal
	include Mammals 

	def alive
		self.class.alive
	end

	def speak
		puts "woof"
	end

	def number_legs 
		Mammals::Quadraped.legs

	end

end
# before we even begin writing anything in our dog blueprint we can already call the class method traits directly
pippin = Dog.new
# pippin.speak
pippin.number_legs