require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


client1 = Client.new("Client1")
client2 = Client.new("Client2")
client3 = Client.new("Client3")


trainer1 = Trainer.new("Trainer1")
trainer2 = Trainer.new("Trainer2")

client1.assign_trainer(trainer2)
client2.assign_trainer(trainer1)
client3.assign_trainer(trainer1)


location1 = Location.new("Location1")
location2 = Location.new("Location2")

session1 = Session.new(client1, location2)
session2 = Session.new(client2, location1)
session3 = Session.new(client3, location2)

Pry.start
