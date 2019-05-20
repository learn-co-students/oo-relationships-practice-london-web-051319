# #### Desserts
#   - #ingredients
#     - should return an array of ingredients for the dessert
#   - #bakery
#     - should return the bakery object for the dessert
#   - #calories
#     - should return a number totaling all the calories for all the ingredients included in that dessert
#   - .all
#     - should return an array of all desserts
class Dessert

  attr_accessor :name, :bakery

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  #   - #calories
  #     - should return a number totaling all the calories for all the ingredients included in that dessert
  def calories
    ingredients.map do |ingredient|
      ingredient.calories
    end.reduce(:+)
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

end
