class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    listing.map {|listing| listing.guest }
  end

  #returns an array of all listings a guest has stayed at

 def trips
   Trip.all.select {|trip| trip.guest == self}
 end
 #returns an array of all trips a guest has made

 def trip_count
   self.trip_count
 end
 #returns the number of trips a guest has taken

 def pro_traveller
   Guest.map {|guest| guest.trip_count}
   end
 #returns an array of all guests who have made over 1 trip

 def find_all_by_name(name)
   self.select {|guest| guest.name == self}
 end
 #takes an argument of a name (as a string), returns the all guests with that name

end
