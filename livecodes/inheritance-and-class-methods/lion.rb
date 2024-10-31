require_relative 'animal'
class Lion < Animal
  def talk
    # we use the attribute @name
    # to print the name of the lion that is talking
    "#{@name} roars"
  end

  def eat(food)
    # super Wil call the method with the same name
    # in the PARENT CLASS
    "#{super(food)}. Law of the jungle!"
  end
end
