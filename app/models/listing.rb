class Listing

  attr_accessor :city

    @@all = []

    def initialize(city)
      @city = city
      @@all << self
    end

    def self.all
      @@all
    end

    def guests

      trip.map {|trip| trip.guest == self}
    end
      #returns an array of all guests who have stayed at a listing


    def trips
      Trip.all.select {|trip| trip.listing_name == self}

    end
      #returns an array of all trips at a listing


    def trip_count
      self.trip_count
    end
    #returns the number of trips that have been taken to that listing

    def find_all_by_city(city)
      self.select {|listing| listing.city_name == city}
    end
    #takes an argument of a city name (as a string) and returns all the listings for that city


    def most_popular
      listing.map {|listing| listing.trip_count}
    end
    #finds the listing that has had the most trips



end
