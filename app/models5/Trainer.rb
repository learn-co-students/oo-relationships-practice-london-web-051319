class Trainer

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
    Client.all.select do |client|
      client.trainer == self
    end
  end

  def client_count
    clients.length
  end

  def self.most_clients
    all.max_by do |trainer|
      trainer.client_count
    end
  end


end
