# #### Bakery
# - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery

class Bakery

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # - .all
  #   - should return an array of all bakeries
  def self.all
    @@all
  end
  # - #desserts
  #   - should return an array of desserts the bakery makes
  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end
  # - #ingredients
  #   - should return an array of ingredients for the bakery's desserts
  def ingredients
    desserts.map do |dessert|
      dessert.ingredients
    end.flatten
  end

  # - #shopping_list
  #   - should return a string of names for ingredients for the bakery
  def shopping_list
    ingredients.map do |ingredient|
      ingredient.name
    end.join(" , ")
  end

  # - #average_calories
  #   - should return a number totaling the average number of calories for the desserts sold at this bakery
  def average_calories
    dessert_cal = desserts.map do |dessert|
      dessert.calories || 0
    end
    dessert_cal.reduce(:+)/dessert_cal.length
  end
end
