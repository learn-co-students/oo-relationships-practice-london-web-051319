class Guest
  include Helper
  attr_reader :name
  def initialize(*args)
    #Here you can define the list of variables (order matters!)
    vars = %w(name)
    super(vars, args)
  end

  #This guest makes a trip to a listing and returns a Trip object
  def make_a_trip(listing)
    Trip.new(listing, self)
  end

  #Returns all the trips that this guest has made
  def trips
    super("guest")
  end


  #Returns an array of all travellers that have made more than 1 trip
  def self.pro_traveller
    self.class.all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    find(vars[0], name)
  end
end
