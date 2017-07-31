# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

  attr_accessor :number_of_animals_created, :eat, :drink, :speak


  def self.traits # This is a class method and can be called on the class itself i.e. it does not need to be instantiated as an object
    puts 'Animals can breathe, eat, drink, speak and pro-create'
  end

  def breathe 
  	puts "inhale and exhale"
  end

  def pro_create
  	puts "new life begins"
  end

  def eat
  	puts " munch munch"
  end

  def drink
  	puts "slurp slurp"
  end

  def speak
  	puts "Yeah I talk and what?"
  end



end

# Animal.alive

# dog = Animal.new



