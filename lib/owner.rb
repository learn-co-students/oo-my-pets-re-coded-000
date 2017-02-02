class Owner
  attr_reader :species
  attr_accessor :name, :pets
 @@all=[]
def initialize(species)
  @species=species
  @pets = {:fishes => [], :dogs => [], :cats => []}

  @@all << self
 end
def self.all
  @@all # code goes here
end
def self.reset_all
    @@all=[]
  end
def say_species
  "I am a #{@species}."
end
def self.count
  @@all.size
end

def buy_cat(cat_name)
cat=Cat.new(cat_name)
@pets[:cats]<< cat
end
def buy_fish(fish_name)
  fish=Fish.new(fish_name)
  @pets[:fishes]<< fish
end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
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
  @pets[:fishes].each{|fish| fish.mood="happy"}
end
def sell_pets
  @pets[:dogs].each{|dog| dog.mood="nervous"}
@pets[:cats].each{|cat| cat.mood="nervous"}
@pets[:fishes].each{|fish| fish.mood="nervous"}
@pets.clear
end
def list_pets
"I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
end

end
