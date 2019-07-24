class Owner
   
   attr_accessor :name, :cars, :mechanic
   
   # CLASS ************************

   @@all = []
   
   def self.all
      @@all
   end

   def initialize(name:)
      @name = name
      @@all << self
   end

   def self.av_cars_owned
      Car.all.length/Owner.all.length
   end

     # INSTANCE *****************

   def cars # links owners to cars
      Car.all.select{|inst| inst.owner == self}
   end

   def mechanics # links owners to mechanics through the filtered list of cars for this specific owner (self) as in cars above.
      cars.map{|inst| inst.mechanic}.uniq 
   end
   
   def cars_owned
      cars.length
   end

   def mechanics_employed
      mechanics.length
   end

end