class Owner
  # code goes here
  attr_accessor :name,:pets
  attr_reader :species
  @@all=[]
  def initialize(species)
    @species=species
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all=[]
  end
  def self.count
    @@all.count
  end
  def say_species
    "I am a #{@species}."
  end
  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end
  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end
  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
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
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
  end
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
