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

passenger1 = Passenger.new("Passenger1")
passenger2 = Passenger.new("Passenger2")
passenger3 = Passenger.new("Passenger3")

driver1 = Driver.new("Driver1")
driver2 = Driver.new("Driver2")

ride1 = Ride.new(driver1, passenger1, 10.5)
ride2 = Ride.new(driver2, passenger2, 50.25)
ride3 = Ride.new(driver1, passenger2, 52)
ride4 = Ride.new(driver2, passenger1, 10)
ride5 = Ride.new(driver1, passenger1, 3.5)

Pry.start
