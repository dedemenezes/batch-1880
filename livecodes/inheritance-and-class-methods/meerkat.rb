require_relative 'animal'

class Meerkat < Animal
  def talk
    # we use the attribute @name
    # to print the name of the lion that is talking
    "#{@name} barks"
  end
end
