class Guest

   attr_accessor :name
   
   def initialize(name: )
      @name = name
      @@all << self
   end

   # CLASS ***************************

      @@all = []

      def self.all
         @@all
      end

      def self.pro_traveller
         @@all.select{|inst| inst.trips.length >= 1}
      end

      def self.find_all_by_name(name)
         @@all.select{|inst| inst.name == name}
      end

   # INSTANCE **********************
      
      def add_listing(listing_name)
         Listing.all.each do |inst|
            if inst.name == listing_name
               self.listings << inst.name
            end
         end
      end
      
      def trip_count
         Trip.all.length
      end

      def trips
         Trip.all.select{|inst| inst.guest == self}
      end

      def listings
         trips.map{|inst| inst.listing}
      end
      
   end

   