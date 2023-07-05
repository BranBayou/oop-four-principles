#Encapsulation & Abstraction

class Animal
  def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
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
  attr_reader :number_of_legs

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
end

animal_1 = Animal.new('cat', 4)
animal_2 = Animal.new('dog', 4)
puts animal_1.type
puts animal_2.speak