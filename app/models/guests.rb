class Guests
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trips.all.select {|trip| trip.guest == self}
  end

  def listings
    trips.map {|trip| trip.listing}.uniq
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    all.max_by {|guest| guest.trip_count}
  end

  def self.find_all_by_name(name)
    all.select {|guest| guest.name == name}
  end



end
