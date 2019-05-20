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

  def trips
    Trips.all.select {|trip| trip.listing == self}
  end

  def guests
    trips.map { |trip| trip.guest }
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    all.select {|trip| trip.city == city}
  end

  def self.most_popular
    tripBookings = Trips.all.map {|trip| trip.listing}
    all.max_by {|listing| tripBookings.count(listing)}
  end
end
