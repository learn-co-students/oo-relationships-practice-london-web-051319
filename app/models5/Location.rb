class Location

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def clients
    Session.all.select do |session|
      session.location == self
    end.map do |session|
      session.client
    end.uniq
  end

  def client_count
    clients.length
  end

  def self.least_clients
    all.min_by do |location|
      location.client_count
    end
  end

  
end
