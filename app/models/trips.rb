class Trips
  attr_accessor :title, :listing, :guest
  @@all = []

  def initialize(title, listing, guest)
    @title = title
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

end
