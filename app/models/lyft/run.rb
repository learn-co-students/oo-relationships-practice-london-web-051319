require_relative "lib/passenger.rb"
require_relative "lib/ride.rb"
require_relative "lib/driver.rb"
require "pry"

# Examples


passenger1 = Passenger.new(name: "Ms Feversham")
passenger2 = Passenger.new(name: "Mr Barker")
passenger3 = Passenger.new(name: "Ms Brookes")

driver1 = Driver.new(name: "John")
driver2 = Driver.new(name: "Barry")
driver3 = Driver.new(name: "Jim")

#MAKE SURE THESE ARE OBJECTS AND ARE DEFINED AFTER THE VARIABLES
ride1 = Ride.new(driver: driver1, passenger: passenger1, distance: 90.0)
ride2 = Ride.new(driver: driver2, passenger: passenger2, distance: 100.0)
ride3 = Ride.new(driver: driver2, passenger: passenger3, distance: 40.0)
ride4 = Ride.new(driver: driver3, passenger: passenger1, distance: 150.0)


binding.pry
puts "exit"