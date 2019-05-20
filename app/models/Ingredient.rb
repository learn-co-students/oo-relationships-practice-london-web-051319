# #### Ingredients
#   - #dessert
#     - should return a dessert object for that ingredient
#   - #bakery
#     - should return the bakery object for the bakery that uses that ingredient
#   - .all
#     - should return an array of all ingredients
#   - .find_all_by_name(ingredient)
#     - should take a string argument return an array of all ingredients that include that string in their name
#       - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
#       - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
class Ingredient

  attr_accessor :name, :dessert, :calories

  @@all = []

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end


  #   - #bakery
  #     - should return the bakery object for the bakery that uses that ingredient
  def bakery
    @dessert.bakery
  end

  def self.find_all_by_name(search)
    self.all.map do |ingredient|
      ingredient.name.downcase
    end.select do |name|
      name.include?(search.downcase)
    end
  end

end
