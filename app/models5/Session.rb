class Session

  attr_accessor :client, :location

  @@all = []

  def initialize(client, location)
    @client = client
    
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

end
