require_relative 'building'
require_relative 'butler'

class Castle < Building
  # We want to define specific attributes and behaviors
  attr_accessor :moat
  attr_reader :butler

  def initialize(country, width, length)
    super
    @butler = Butler.new(self) # self is the recently created castle
  end

  # Class Methods it MUST START with self.method_name
  def self.categories
    return ["Medieval", "Norman", "Ancient"]
  end

  def has_moat?
    @moat == true
  end

  # INSTANCE METHODS
  def floor_area
    # use the calculation done in the building method
    super + 100 # super will call the same method in the parent class
  end
end


# Castle.floor_area #=> undefined method `floor_area' for class Castle (NoMethodError)
p Castle.categories

taj_mahal = Castle.new('India', 120, 25)
p taj_mahal
p taj_mahal.has_moat?

puts "Hiring a moat for taj mahal"

taj_mahal.moat = true

p taj_mahal.has_moat?

puts "Castle area:"
p taj_mahal.floor_area
puts taj_mahal.butler.clean

# p taj_mahal.categories #=> undefined method `categories' for an instance of Castle
