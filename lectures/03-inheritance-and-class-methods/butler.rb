class Butler
  # STATES
  # castle
  def initialize(castle)
    @castle = castle # An INSTANCE OF THE CASTLE CLASS
  end

  # Behavior / METHODS
  def clean
    #=> Cleaned castle located at ????
    return "Cleaned castle located in #{@castle.country}"
  end
end
