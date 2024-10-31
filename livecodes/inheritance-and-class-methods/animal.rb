class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.phyla
    [
      'Phylum Porifera',
      'Phylum Coelenterata',
      'Phylum Platyhelminthes',
      'Phylum Nematoda',
      'Phylum Annelida',
      'Phylum Arthropoda',
      'Phylum Mollusca',
      'Phylum Echinodermata',
      'Phylum Protochordata',
      'Phylum Vertebrata'
    ]
  end

  def eat(food)
    "#{@name} eats #{food}"
  end

  # read the attribute
  # def name
  #   @name
  # end
end
