# creates a trip and supplies data to other classes
class Trip

   attr_accessor :name, :listing, :guest, :city

   def initialize(name: , guest: , listing: )
      @name = name
      @guest = guest
      @listing = listing
      @city = Listing.all.select{|inst| inst.city == listing.city}[0].city
      # @city = city
      @@all << self
   end

   # CLASS ******************************
   
   @@all = []

   def self.all
     @@all
   end

#  INSTANCE ************************

end
