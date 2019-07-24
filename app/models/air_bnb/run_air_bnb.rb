require_relative "./lib/listing.rb"
require_relative "./lib/guest.rb"
require_relative "./lib/trip.rb"
require "pry"

listing1 = Listing.new(name: "The Lodge", city: "Barcelona")
listing2 = Listing.new(name: "Loft Apartment", city: "Paris")
listing3 = Listing.new(name: "Castillo", city: "Istanbul")

guest1 = Guest.new(name: "Hayward")
guest2 = Guest.new(name: "Obama")
guest3 = Guest.new(name: "Jordan")
guest4 = Guest.new(name: "Adams")

trip1 = Trip.new(name: "Summer Tour '19'", guest: guest1, listing: listing1)
trip2 = Trip.new(name: "Winter Solstice", guest: guest3, listing: listing2)
trip2 = Trip.new(name: "Long Weekend", guest: guest4, listing: listing2)
trip3 = Trip.new(name: "Easter", guest: guest3, listing: listing3)
trip4 = Trip.new(name: "Summer Vacay", guest: guest3, listing: listing3)
trip4 = Trip.new(name: "Halloween", guest: guest4, listing: listing2)


binding.pry
puts "end"