class Owner
  attr_reader :species, :name

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    
  end

  def pets
    
  end

end
