class Owner
  attr_accessor :pets, :name
  attr_reader :species
  # code goes here
  @@all = []
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    @@all.count
  end
  def say_species
    "I am a #{species}."
  end
  def buy_fish(new_fish)
    pets[:fishes] << Fish.new(new_fish)
  end
  def buy_cat(new_cat)
   pets[:cats] << Cat.new(new_cat)
  end
  def buy_dog(new_dog)
    pets[:dogs] << Dog.new(new_dog)
  end
  def walk_dogs
   pets[:dogs].each{|dog| dog.mood="happy"}
  end

  def play_with_cats
  pets[:cats].each{|cat| cat.mood="happy"}
  end

  def feed_fish
    pets[:fishes].each{|fish| fish.mood="happy"}
  end

  def sell_pets
     pets.each{|key,value| value.each{|pet| pet.mood="nervous"}}
     @pets.clear
  end
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
