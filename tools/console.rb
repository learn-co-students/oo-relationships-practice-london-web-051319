require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

GuestOne = Guests.new("Felix")
GuestTwo = Guests.new("Jack")
GuestThree = Guests.new("Jonas")

ListingOne = Listing.new("London")
ListingTwo = Listing.new("New York")
ListingThree = Listing.new("San Francisco")

TripOne = Trips.new("Wonderful", ListingOne, GuestOne)
TripTwo = Trips.new("Great", ListingTwo, GuestTwo)
TripThree = Trips.new("Marvellous", ListingThree, GuestOne)
TripFour = Trips.new("Soso", ListingTwo, GuestThree)
TripFive = Trips.new("Not so good", ListingOne, GuestOne)
TripSix = Trips.new("Awful", ListingOne, GuestTwo)


Pry.start
