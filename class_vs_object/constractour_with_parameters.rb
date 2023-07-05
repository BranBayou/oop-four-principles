class Animal
  def initialize(name, number_of_legs)
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
  end

  def desplay
    "ID: #{@id}, Name: #{@name}, Number of Legs: #{@number_of_legs}"
  end
end

animal_1 = Animal.new("Rex", 4)
animal_2 = Animal.new("Bob", 8)

puts animal_1.desplay
puts animal_2.desplay
