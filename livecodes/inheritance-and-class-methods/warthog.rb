require_relative 'animal'

class Warthog < Animal
  def talk
    # we use the attribute @name
    # to print the name of the lion that is talking
    "#{@name} grunts"
  end
end
