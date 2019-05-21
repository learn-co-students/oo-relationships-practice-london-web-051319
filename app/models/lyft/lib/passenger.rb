class Passenger

   attr_accessor :name

   def initialize(name: )
      @name = name
      @@all << self
   end

   # CLASS *******************

   @@all = []

   def self.all
      @@all
   end
   
   def self.premium_members
      prems = []
      Passenger.all.each{|pass| pass.distance > 100 ? prems << pass : nil}
      prems
   end

   # INSTANCE *****************

   def rides
      Ride.all.select{|inst| inst.passenger == self}
   end

   def drivers
      rides.map{|inst| inst.driver}
   end

   def distance
      rides.map{|inst| inst.distance}.inject(0){|sum,x|sum+x}
   end

end

# passenger sets up the ride