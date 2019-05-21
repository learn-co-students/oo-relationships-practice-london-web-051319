class Ingredients

   attr_accessor :name, :calories

      @@all = []
      
      def self.all
         @@all
      end

      def initialize(name: , calories: )
      @name = name
      @calories = calories
      @@all << self
   end

   def self.find_all_by_name(string_value)
      @@all.select{|ingredient| ingredient.name.match(string_value)}
   end

   def desserts
      des = []
      Desserts.all.each do|inst| 
         inst.ingredients.each do |ingredient_object|
            if ingredient_object == self
               des << inst
            else
               nil
            end
         end
      end
      des
   end

   def bakeries
      desserts.map{|inst| inst.bakery}.uniq
   end



end
