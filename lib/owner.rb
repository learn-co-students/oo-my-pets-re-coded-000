class Owner
# code goes here
# ********************************************************************************
attr_reader :species
attr_accessor :pets , :name
@@all=[]
# ********************************************************************************
def initialize(species)
@species = species
@pets = {:fishes => [], :dogs => [], :cats => []}
self.class.all << self
end
# ********************************************************************************
def self.all
  @@all
end
# ********************************************************************************
def self.reset_all
@@all=[]
end
# ********************************************************************************
def self.count
@@all.size
end
# ********************************************************************************
def say_species
"I am a #{@species}."
end
# ********************************************************************************
def buy_fish(fish_name)  # This method recieve a fish_name as a variable.
fish=Fish.new(fish_name) # Here we create an instance of Fish calss and pass the name to it.
@pets[:fishes]<<fish       # Add the instance with it's name to database(hash).
end
# ********************************************************************************
def buy_cat(cat_name)
cat=Cat.new(cat_name)
@pets[:cats]<<cat
end
# ********************************************************************************
def buy_dog(dog_name)
dog=Dog.new(dog_name)
@pets[:dogs]<<dog
end
# ********************************************************************************
def walk_dogs
@pets[:dogs].each{|dog| dog.mood="happy"}
end
# ********************************************************************************
def play_with_cats
@pets[:cats].each{|cat| cat.mood="happy"}
end
# ********************************************************************************
def feed_fish
@pets[:fishes].each{|fish| fish.mood="happy"}
end
# ********************************************************************************
def sell_pets
@pets[:dogs].each{|dog| dog.mood="nervous"}
@pets[:cats].each{|cat| cat.mood="nervous"}
@pets[:fishes].each{|fish| fish.mood="nervous"}
@pets.clear
end
# ********************************************************************************
def list_pets
"I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
end
# ********************************************************************************
end
