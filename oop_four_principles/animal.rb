#Encapsulation & Abstraction

require_relative "./remover.rb"
require_relative "./foods.rb"

class Animal
  def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new()
  end

  # def id
  #   @id
  # end
  attr_reader :id

  # def type
  #   @type
  # end
  attr_reader :type

  # def number_of_legs
  #   @number_of_legs
  # end
  attr_accessor :number_of_legs

  # def name
  #   @name
  # end

  # def name=(value)
  #   @name = value
  # end
  attr_accessor :name

  # def speak
  #   if @type == "dog"
  #     "Woof, woof"
  #   elsif @type == "spider"
  #     "..."
  #   end
  # end
  def speak
    "grrrr"
  end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs)
  end
  def likes_food?(food)
    @liked_food.is_liked?(food)
  end
end

animal_1 = Animal.new('cat', 4)
animal_2 = Animal.new('dog', 4)
puts animal_1.type
puts animal_2.speak

# puts animal_2.remove_leg
puts animal_2.likes_food?("meat")
