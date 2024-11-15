class Building
  attr_reader :country, :length
  attr_accessor :width
  def initialize(country, width, length)
    @country = country
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end
