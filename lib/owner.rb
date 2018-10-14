require 'pry'
class Owner

  attr_reader :species
  attr_accessor :name, :pets, :mood
  @@owners = []

  def initialize(species)
    @owners = self
    @@owners << @owners
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@owners
  end
  def self.reset_all

    @@owners.clear
  end
  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{species}."
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
    pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
       pets[:cats].each do |cat|
         cat.mood = "happy"
       end
     end


    def feed_fish
      pets[:fishes].each do |dog|
        dog.mood = 'happy'
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
      fish = pets[:fishes].count
      cat = pets[:cats].count
      dog = pets[:dogs].count
      "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
      end



end






































# class Owner
#   OWNERS = []
#   attr_accessor :name, :pets
#   attr_reader :species
#
#   def self.reset_all
#     OWNERS.clear
#   end
#
#   def self.all
#     OWNERS
#   end
#
#   def self.count
#     OWNERS.size
#   end
#
#   def initialize(species)
#     @species = species
#     OWNERS << self
#     @pets = {:fishes => [], :dogs => [], :cats => []}
#   end
#
#   def buy_fish(name)
#     pets[:fishes] << Fish.new(name)
#   end
#
#   def buy_dog(name)
#     pets[:dogs] << Dog.new(name)
#   end
#
#   def buy_cat(name)
#     pets[:cats] << Cat.new(name)
#   end
#
#   def walk_dogs
#     pets[:dogs].each do |dog|
#       dog.mood = "happy"
#     end
#   end
#
#   def play_with_cats
#     pets[:cats].each do |cat|
#       cat.mood = "happy"
#     end
#   end
#
#   def feed_fish
#     pets[:fishes].each do |fish|
#       fish.mood = "happy"
#     end
#   end
#
#
#
#   def say_species
#     "I am a #{species}."
#   end
#
#   def list_pets
#     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
#   end
#
# end
#
#
