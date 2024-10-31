# create an array with Simba, Nala, Timon & Pumbaa, iterate over it
# puts the sound each animal make
require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'
# animals = []


simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumbaa = Warthog.new('Pumbaa')
# animals << simba
# animals << nala
animals = [simba, nala, timon, pumbaa]


animals.each do |animal|
  # POLYMORPHISM - Object Oriented Programming
  # duck typing
  puts animal.talk

  puts animal.eat('a carrot')
end
