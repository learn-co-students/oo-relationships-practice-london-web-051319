require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rome = Listing.new("Rome")
florence = Listing.new("Florence")
venice = Listing.new("Venice")

awa = Guest.new("Awa")
roda = Guest.new("Roda")
fatima = Guest.new("Fatima")

trip1 = Trip.new(rome, awa)
trip2 = Trip.new(florence, roda)
trip3 = Trip.new(venice, fatima)


Pry.start
