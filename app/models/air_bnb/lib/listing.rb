require "pry"
class Listing

   attr_accessor  :name, :city

   def initialize(name: , city: )
      @name = name
      @city = city
      @@all << self
   end
   
   # CLASS ******************************
   
   @@all = []
   
   def self.all
      @@all
   end
   
   def self.find_all_by_city(city_name)
         @@all.select{|inst| inst.city == city_name}
   end
      
      def self.most_popular
         # Trips.all.map{|inst| inst.city}
         val = Trip.all.map{|inst| inst.listing}
         Listing.all.max_by{|inst| val.count(inst)}
         
      end
      
      # INSTANCE **************************
      
      def trips
         Trip.all.select{|inst| inst.listing == self}
      end
      
      def guests
         trips.map{|inst| inst.guest}
      end
      
      def trip_count
         trips.length
      end
      
   end

   
   
   # def self.most_popular
   #    # Trips.all.map{|inst| inst.city}
   #    count = Listings.all.map{|list| list.trips.length}.sort.last
   #    Listings.all.each do |list| 
   #       if list.trips.length == count
   #          list
   #       end
   #    end
   # end