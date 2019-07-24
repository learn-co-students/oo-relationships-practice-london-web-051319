class Listing
  include Helper
  attr_reader :city
  def initialize(*args)
    #Here you can define the list of variables (order matters!)
    vars = %w(city)
    super(vars, args)
  end
  #Returns an array of all guests who have stayed at this listing
  def guests
    @trips.map(&:guest)
  end

  def self.find_all_by_city(city)
    find(vars[0], city)
  end

  def trips
    super("listing")
  end

  #Returns a listing with the largest number of guests
  def self.most_popular
    self.class.all.max_by(&:trip_count)
  end
end
