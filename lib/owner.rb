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

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|f| f.mood = "happy"}
  end

  def sell_pets
    pets.each do |pets|
      pets.each{|pet| pet.mood = "nervous"}
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end


end
