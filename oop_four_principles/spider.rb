#Inheritance & Polymorphism

require_relative 'animal'

class Spider < Animal
  def initialize(web_strength_level, name = "Unknown")
    @web_strength_level = web_strength_level
  end
  def make_a_web
    "www"
  end

  attr_accessor :web_strength_level
end

animal_3 = Spider.new(99.9, "Charles")

puts animal_3.web_strength_level