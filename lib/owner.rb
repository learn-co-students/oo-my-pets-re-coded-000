class Owner
  # code goes here
  OWNERS = []
   attr_accessor :name, :pets
   attr_reader :species

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
end
def self.all
  OWNERS
end
def self.reset_all
   OWNERS.clear
 end
 def self.count
   OWNERS.size
 end
def say_species
"I am a #{species}."  
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
   pets[:dogs].each do |dog|
     dog.mood = "happy"
   end
 end

 def play_with_cats
   pets[:cats].each do |cat|
     cat.mood = "happy"
   end
 end

 def feed_fish
   pets[:fishes].each do |fish|
     fish.mood = "happy"
   end
 end
 def sell_pets
     pets.each do |species, animals|
       animals.each do |animal|
         animal.mood = "nervous"
       end
       animals.clear
     end
   end
   def list_pets
   "I have #{pets[:fishes].length} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].size} cat(s)."
 end
 end
 