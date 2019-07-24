class Car

   attr_reader :make, :model, :classification, :registration
   attr_accessor :car, :owner, :mechanic

   # CLASS ******************
   @@all = []
   
   def self.all
      @@all
   end
   
   def initialize(make: , model: , registration: , classification: , owner: , mechanic: )
      @make = make
      @model = model
      @registration = registration
      @classification = classification
      @owner = owner
      @mechanic = mechanic
      @@all << self
   end  

   def self.classifications
      Car.all.map{|inst| inst.classification}.uniq
   end

   def matching_mechanics
      Mechanic.all.select{|inst| inst.specialty == self.classification}
   end

   # INSTANCE ******************
   
end