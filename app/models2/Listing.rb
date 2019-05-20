# #### Listing
# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips
class Listing

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips.map do |trip|
      trip.guest
    end.uniq
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city.downcase.include?(city.downcase)
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      listing.trip_count
    end
  end


end
