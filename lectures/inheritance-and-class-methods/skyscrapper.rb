require_relative 'building'

class Skyscrapper < Building
  def initialize(country, width, length, height)
    super(country, width, length)
    # Add the specific attributes for the Skyscrapper
    @height = height
  end

end

skycrapper_one = Skyscrapper.new('Brasil', 10, 5, 20)
p skycrapper_one
p skycrapper_one.floor_area


puts "Hiring a moat for skyscrapper"
# Lines below are commented because they will throw an error
# skycrapper_one.moat = true #=> undefined method `moat=' for an instance of Skyscrapper (NoMethodError)
