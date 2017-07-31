require_relative '../animal'
require_relative '../animal classes/mammals'

class Cat < Animal
	include Mammals

	def fur_type
		puts "tabby"
	end

	def alive
		self.class.alive
	end

	def hunt
		puts "sadistic"
	end

	def eyes
		Mammals::CommonTraits.eyes
	end
end

laser = Cat.new


laser.eyes

