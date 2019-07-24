require "pry"

class Bakeries

   attr_accessor :name

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: )
      @name = name
      @@all << self
   end

   def desserts
      Desserts.all.select{|inst| inst.bakery == self.name}
   end

   def dessert_names
      desserts.map{|inst| inst.name}
   end
   
   def dessert_calories(dessert_name) # must be a string value
      pud = desserts.select{|inst| inst.name == dessert_name}
         pud[0].ingredients.map{|inst| inst.calories.to_i}.inject(0){|sum,x| sum+x}
   end

   def average_calories
      cals = []
      desserts.each do |inst| 
         inst.ingredients.each do |ing_inst|
            cals << ing_inst.calories.to_i # all calorie values as integers in an array
         end
      end
      cals.inject(0){|sum, x| sum + x}/desserts.length # sums calorie values and calculates average
   end
   
   def ingredients
      desserts.map{|inst| inst.ingredients}.flatten.uniq
   end
   
   def shopping_list
      ingredients.map{|inst| inst.name}
   end
end
