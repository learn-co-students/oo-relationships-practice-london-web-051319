class Driver

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
   
   def self.mileage_cap(distance)
      arr = []
      Driver.all.each{|driver| driver.total_mileage > distance ? arr << driver : nil}
      arr
   end

      # INSTANCE *****************

   def  rides
      Ride.all.select{|inst| inst.driver == self}
   end

   def total_mileage
      rides.map{|inst| inst.distance}.inject(0){|sum, x| sum+x}
   end

   def passengers
      rides.map{|inst| inst.passenger}
   end

end