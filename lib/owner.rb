class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    f = Fish.new(name)
    self.pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
    self.pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
    self.pets[:dogs] << d
  end


end
