class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  def initialize(name,mood="nervous")
  # code goes here
  @mood=mood
  @name=name
end
end
