#Inheritance

require_relative 'animal'

class Dog < Animal
  def initialize(color, name = "Unknown")
    super("dog", 4, name)
    @color = color
  end
  def bring_a_stick
    "Here is your stick: --------"
  end

  def speak
    "Woof, woof"
  end
  attr_accessor :color
  attr_accessor :name
end

animal_4 = Dog.new("orange")

puts animal_4.color
puts animal_4.bring_a_stick
puts animal_4.speak