class Location
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def clients
    Client.all.select {|client| client.location == self}
  end

  def self.least_clients
    self.all.map(&:clients).min_by(&:length)
  end
end
