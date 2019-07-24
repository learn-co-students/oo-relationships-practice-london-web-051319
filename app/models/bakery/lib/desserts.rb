class Desserts

   attr_accessor :name, :bakery, :ingredients

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: , bakery: , ingredients: )
      @name = name
      @bakery = bakery
      @ingredients = ingredients
      @@all << self
   end

   def ingredient_names # this gives the string value names as the above returns objects
      ingredients.map{|inst| inst.name} 
   end

   def calorie_intake
      self.ingredients.map{|inst| inst.calories.to_i}.inject(0){|sum, x| sum + x}
   end

end
