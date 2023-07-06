#Inheritance & Polymorphism

require_relative 'animal'
require_relative 'foods'

class Spider < Animal
  def initialize(web_strength_level, name = "Unknown")
    super("spider", 8, name)
    @web_strength_level = web_strength_level
    @liked_food = SpiderFood.new()
  end
  def make_a_web
    "www"
  end

  attr_accessor :web_strength_level
end

animal_3 = Spider.new(99.9, "Charles")

puts animal_3.web_strength_level