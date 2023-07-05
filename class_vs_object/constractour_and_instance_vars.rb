class Animal
  def initialize
    @id = Random.rand(1..1000)
    @name = "Rex"
    @number_of_legs = 4
  end
end

animal_1 = Animal.new
animal_2 = Animal.new

animal_1
animal_2