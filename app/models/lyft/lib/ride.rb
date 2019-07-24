class Ride

   attr_accessor :driver, :passenger, :distance

   def initialize(driver: , passenger: , distance: )
      @driver = driver
      @passenger = passenger
      @distance = distance
      @@all << self
   end

   # CLASS *******************

   @@all = []

   def self.all
      @@all
   end

   def self.average_distance
      Ride.all.map{|inst| inst.distance}.inject(0){|sum, x| sum+x}/Ride.all.length
   end

      # INSTANCE *****************

end