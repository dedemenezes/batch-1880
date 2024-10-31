# class ChildClass < ParentClass
# end

require_relative 'building'

class House < Building
  # attr_reader :length, :country
  # attr_writer :width
  # attr_accessor :width # reader + writer

  # # STATE/ATTRIBUTES
  # def initialize(country, width, length)
  #   # width   -> Integer
  #   # length  -> Integer
  #   # country -> String
  #   @country = country
  #   @width = width
  #   @length = length
  # end

  # INSTANCE METHODS!
  # # GETTERS/READERS
  # def country
  #   @country
  # end

  def who_is_calling_me
    # Self inside an INSTANCE METHODS
    # reference the INSTANCE who is calling the method
    return self
  end


  def description
    #=> "Located in France, this house has a width of 20 and length of 15"
    return "Located in #{country}, this house has a width of #{width} and length of #{self.width}"
  end

  # CLASS METHODS
  def self.who_is_calling_me
    # Self inside an CLASS METHODS
    # reference the CLASS who is calling the method
    return self
  end

  def self.price_per_country(country)
    case country
    when "Brasil" then 9000
    when "France" then 3000
    else raise Exception.new("No data for #{country}")
    end
  end
end

# Create new INSTANCES of the House class
house = House.new('Brasil', 15, 10)
p house.description

french_house = House.new('France', 2, 3)
p french_house.description


p house.country
p house.width
puts 'Buying more land...'
house.width = 20
p house.width

# house_two = House.new('France', 2, 3)
# p house_two

# Self will ALWAYS reference who is calling the method!
p house.who_is_calling_me
p House.who_is_calling_me

p House.price_per_country('Brasil')
p House.price_per_country('Germany')
