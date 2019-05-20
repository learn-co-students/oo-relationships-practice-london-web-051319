class Client

  attr_accessor :name, :trainer

   @@all = []

   def initialize(name)
     @name = name
     @@all << self
   end

   def self.all
     @@all
   end

   def assign_trainer(trainer)
     @trainer = trainer
  end




end
