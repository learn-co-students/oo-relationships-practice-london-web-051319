class Trainer
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def assign_client(location)
    Client.new(name, self, location)
  end

  def clients
    Client.all.select{|client| client.trainer == self}
  end

  def self.most_clients
    self.all.map(&:clients).max_by(&:length)
  end
end
