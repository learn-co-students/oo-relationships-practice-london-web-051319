class Mechanic

   attr_accessor :name, :specialty, :cars, :owners

   # CLASS ******************

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: , specialty: )
      @name = name
      @specialty = specialty
      @@all << self
   end
   
   # INSTANCE *****************

   def cars
      Car.all.select{|inst| inst.mechanic == self}
   end

   def owners
      self.cars.map{|inst| inst.owner}.uniq
   end

end