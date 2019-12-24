class Owner
  @@all=[]
  @pets={}
  @name=nil
  attr_reader :species
  attr_accessor :name ,:pets
  # code goes here
  def initialize(species)
    @species=species
    @pets={:fishes => [], :dogs => [], :cats => []}
   @@all.push(self)
   end
 def self.all
  return @@all
  end

  def self.reset_all
    @@all=[]
  end
  def self.count
    return @@all.size
  end
def  say_species
  return "I am a #{species}."
end
def pets
  return @pets

end
def buy_fish(name)
  fish=Fish.new(name)
  self.pets[:fishes].push(fish)
end
def buy_cat(name)
  cat=Cat.new(name)
  self.pets[:cats].push(cat)
end
def buy_dog(name)
  dog=Dog.new(name)
  self.pets[:dogs].push(dog)
end
def walk_dogs
  self.pets[:dogs].each do |e|
    e.mood="happy"
  end
end
def play_with_cats
  self.pets[:cats].each do |e|
    e.mood="happy"
  end
end
def feed_fish
  self.pets[:fishes].each do |e|
    e.mood="happy"
  end
end
def sell_pets
  self.pets[:dogs].each do |e|
    e.mood="nervous"
  end
  self.pets[:fishes].each do |e|
    e.mood="nervous"
  end
  self.pets[:cats].each do |e|
    e.mood="nervous"
  end
  self.pets={}

end
def list_pets
  dogs_count=  self.pets[:dogs].size
  cats_count=  self.pets[:cats].size
  fish_count=  self.pets[:fishes].size

  return "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
end
end
