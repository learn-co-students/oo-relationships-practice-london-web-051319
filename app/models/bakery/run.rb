require_relative "lib/bakeries.rb"
require_relative "lib/desserts.rb"
require_relative "lib/ingredients.rb"
require "pry"

# TESTS HERE!!!
salt = Ingredients.new(name: "salt", calories: "2")
chocolate = Ingredients.new(name: "chocolate", calories: "10")
sugar = Ingredients.new(name: "sugar", calories: "8")
choco_spink = Ingredients.new(name: "chocolate sprinkles", calories: "5")
color = Ingredients.new(name: "food coloring", calories: "1")
milk = Ingredients.new(name: "milk", calories: "4")
eggs = Ingredients.new(name: "eggs", calories: "15")
flour = Ingredients.new(name: "flour", calories: "6")
bacon = Ingredients.new(name: "bacon", calories: "8")
jam = Ingredients.new(name: "jam", calories: "8")
cream = Ingredients.new(name: "cream", calories: "12")
butter = Ingredients.new(name: "butter", calories: "13")
beans = Ingredients.new(name: "beans", calories: "4")
sausage = Ingredients.new(name: "sausage", calories: "12")
bread = Ingredients.new(name: "bread", calories: "5")

pancakes = Desserts.new(name: "Pancakes", bakery: "Momma's Lil' Cafe", ingredients: [eggs, flour, milk])
brekky = Desserts.new(name: "Breakfast", bakery: "Momma's Lil' Cafe", ingredients: [eggs, beans, sausage, bacon, butter])
choco = Desserts.new(name: "Momma's Chocolate Delight", bakery: "Momma's Lil' Cafe", ingredients: [eggs, flour, milk, butter, sugar, chocolate])
victoria = Desserts.new(name: "Victoria Sponge", bakery: "The Classic Eatery", ingredients: [eggs, flour, milk, sugar, cream, jam])
toast = Desserts.new(name: "Toast", bakery: "Roadside Shed", ingredients: [bread, butter, jam])

momma = Bakeries.new(name: "Momma's Lil' Cafe")
classic = Bakeries.new(name: "The Classic Eatery")
roadside = Bakeries.new(name: "Roadside Shed")

binding.pry
puts "end"