class Person

# this is a ruby function only for getters

  attr_reader :age, :monies, :tv_show, :friends, :fav_foods

 # this is a ruby function only for setters - only do this if you want to be able to change the values

 attr_writer

 # this is a ruby function only for combination getter and setter

 attr_accessor :name

def initialize(name, age, monies, friends, tv_show, fav_foods)
  @name = name
  @age = age
  @monies = monies
  @friends = friends
  @tv_show = tv_show
  @fav_foods = fav_foods
end
  #
  # these getters are not needed due to the attr_reader
  # def name()
  #   return @name
  # end
  #
  #
  # def tv_show
  #   return @tv_show
  # end
  def likes_food(food)
  return @fav_foods.include?(food)
  end

  def add_friends(new_friend)
    @friends.push(new_friend)
  end

end
